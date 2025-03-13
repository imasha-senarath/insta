import 'package:flutter/material.dart';

import '../models/story.dart';
import '../models/user.dart';

class ViewStory extends StatefulWidget {
  const ViewStory({
    super.key,
    required this.story,
  });

  final Story story;

  @override
  State<ViewStory> createState() => _ViewStoryState();
}

class _ViewStoryState extends State<ViewStory> {
  @override
  Widget build(BuildContext context) {
    final User? user = User.getUserById(widget.story.user);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onVerticalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  Navigator.pop(context);
                }
              },
              child: Image.network(
                "https://picsum.photos/seed/picsum/200/300",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          user?.image ?? 'https://example.com/image.jpg'),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      user!.name,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.more_vert, size: 28),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/images/ic_comment.png',
                          color: Colors.white,
                          width: 24, // Adjust size
                          height: 24,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Send message",
                            hintStyle: const TextStyle(color: Colors.white54),
                            filled: true,
                            fillColor: Colors.black,
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.white, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        )
                        ,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/images/ic_send.png',
                          width: 24, // Adjust size
                          height: 24,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

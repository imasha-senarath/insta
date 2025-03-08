import 'package:flutter/material.dart';

import '../models/story.dart';
import '../models/user.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.stories,
    required this.index,
  });

  final List<Story> stories;
  final int index;

  @override
  Widget build(BuildContext context) {

    final Story story = stories[index];
    final User? user = User.getUserById(story.user);

    return Padding(
      padding: EdgeInsets.only(right: index == stories.length - 1 ? 0 : 15),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(user?.image ?? 'https://example.com/image.jpg'),
            ),
            const SizedBox(height: 10),
            Text(
              user!.name,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

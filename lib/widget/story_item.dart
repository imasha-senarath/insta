import 'package:flutter/material.dart';

import '../models/story.dart';
import '../models/user.dart';
import '../screens/view_story.dart';

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

    final bool isFirstItem = index == 0;

    return Padding(
      padding: EdgeInsets.only(right: index == stories.length - 1 ? 0 : 10),
      child: GestureDetector(
        onTap: () {
          if(!isFirstItem) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewStory(story: story),
              ),
            );
          }
        },
        child: isFirstItem ? Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 41.0,
                  backgroundImage: NetworkImage('https://www.imashasenarath.com/images/site-assets/display-image-2.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              "Your story",
              style: TextStyle(fontSize: 14, color: Colors.black),
            )
          ],
        ) : Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const RadialGradient(
                  colors: [Colors.yellow, Colors.red, Colors.purple],
                  radius: 1.0,
                  stops: [0.1, 0.6, 1.0],
                ),
                border: Border.all(
                  width: 3.0,
                  color: Colors.transparent,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Make the container circular
                  color: Colors.white,
                  border: Border.all(
                    width: 3.0,
                    color: Colors.transparent,
                  ),
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(user?.image ?? 'https://example.com/image.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              user!.name,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

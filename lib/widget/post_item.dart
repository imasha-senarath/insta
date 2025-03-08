import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/user.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.posts,
    required this.index,
  });

  final List<Post> posts;
  final int index;

  @override
  Widget build(BuildContext context) {
    final post = posts[index];
    User? user = User.getUserById(post.user);

    return Padding(
      padding: EdgeInsets.only(bottom: index == posts.length - 1 ? 0 : 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(user?.image ?? 'https://example.com/image.jpg'),
                ),
                const SizedBox(width: 8),
                Text(
                  user!.name,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, size: 28), // First icon
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 4 / 5,
            child: Image.network(
              'https://picsum.photos/100/300/?blur',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.message, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send, size: 30),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark, size: 30),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                Text(
                  user!.name,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  post.caption,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(
              post.time,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

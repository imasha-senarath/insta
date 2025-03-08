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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(user?.image ?? 'https://example.com/image.jpg'),
                ),
                const SizedBox(width: 8),
                Text(
                  user!.name,
                  style: const TextStyle(
                    fontSize: 14,
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
              post.image,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.message, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send, size: 28),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_outline, size: 28),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Liked by sandi and others',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      user!.name,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      post.caption,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  post.time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

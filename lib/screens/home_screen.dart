import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/story.dart';
import '../widget/post_item.dart';
import '../widget/story_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Story> _stories = Story.dummyStories;
  final List<Post> _posts = Post.dummyPosts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/text-logo.png'),
                      width: 120,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.favorite_border, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.message, size: 28),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: _stories.length,
                    itemBuilder: (context, index) {
                      return StoryItem(stories: _stories, index: index);
                    },
                  ),
                ),
              ),
              ListView.builder(
                itemCount: _posts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return PostItem(posts: _posts, index: index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

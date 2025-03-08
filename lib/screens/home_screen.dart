import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> _stories = ["Food", "Technology", "Fashion", "Science", "Sports", "Life"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/images/text-logo.png'),
                    width: 120,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.heart_broken, size: 28), // First icon
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.message, size: 28), // Second icon
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: index == _stories.length - 1 ? 0 : 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 40, // Adjust size
                          backgroundImage: NetworkImage('https://example.com/image.jpg'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

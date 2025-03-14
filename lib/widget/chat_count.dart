import 'package:flutter/material.dart';

class ChatCount extends StatelessWidget {
  const ChatCount({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Image.asset(
            'assets/images/ic_chat.png',
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
        if(count > 0)
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            padding: const EdgeInsets.all(6),
            child: Text(
              count.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

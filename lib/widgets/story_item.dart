import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {

  final String image;

  const StoryItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange],
              ),
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(image),
            ),
          ),
        ],
      ),
    );
  }
}
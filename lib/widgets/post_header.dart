import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostHeader extends StatelessWidget {

  final PostModel post;

  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(post.profileImage),
      ),
      title: Text(
        post.username,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.more_vert),
    );

  }
}
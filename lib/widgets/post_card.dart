import 'package:flutter/material.dart';
import '../models/post_model.dart';
import 'post_carousel.dart';
import 'post_actions.dart';
import 'post_header.dart';

class PostCard extends StatelessWidget {

  final PostModel post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        PostHeader(post: post),

        PostCarousel(images: post.images),

        const PostActions(),

        Padding(
          padding: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "${post.username} ",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: post.caption),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

      ],
    );
  }
}
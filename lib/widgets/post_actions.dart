import 'package:flutter/material.dart';

class PostActions extends StatefulWidget {
  const PostActions({super.key});

  @override
  State<PostActions> createState() => _PostActionsState();
}

class _PostActionsState extends State<PostActions> {

  bool liked = false;
  bool saved = false;

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [

        Row(
          children: [

            IconButton(
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  liked ? Icons.favorite : Icons.favorite_border,
                  key: ValueKey(liked),
                  color: liked ? Colors.red : Colors.black,
                ),
              ),
              onPressed: (){
                setState(() {
                  liked = !liked;
                });
              },
            ),

            IconButton(
              icon: const Icon(Icons.comment_outlined),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Comments coming soon"))
                );
              },
            ),

            IconButton(
              icon: const Icon(Icons.send),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Share coming soon"))
                );
              },
            ),

          ],
        ),

        IconButton(
          icon: Icon(
              saved ? Icons.bookmark : Icons.bookmark_border
          ),
          onPressed: (){
            setState(() {
              saved = !saved;
            });
          },
        )

      ],
    );
  }
}
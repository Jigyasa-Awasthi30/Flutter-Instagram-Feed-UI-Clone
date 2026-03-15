import 'package:flutter/material.dart';
import 'story_item.dart';

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 90,

      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: 10,

        itemBuilder: (context,index){

          return StoryItem(
            image:
            "https://randomuser.me/api/portraits/women/${index+1}.jpg",
          );

        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPost extends StatelessWidget {

  const ShimmerPost({super.key});

  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(

      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,

      child: Column(
        children: [

          Container(height: 60,color: Colors.white),

          Container(height: 350,color: Colors.white),

          Container(height: 60,color: Colors.white),

        ],
      ),
    );
  }
}
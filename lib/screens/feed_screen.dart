import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/feed_provider.dart';
import '../widgets/story_list.dart';
import '../widgets/post_card.dart';
import '../widgets/shimmer_post.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {

      if(controller.position.pixels >
          controller.position.maxScrollExtent - 300){

        context.read<FeedProvider>().loadPosts();

      }

    });
  }

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<FeedProvider>();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.send, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),

      body: ListView(

        controller: controller,
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
        children: [

          const StoryList(),

          if(provider.isLoading && provider.posts.isEmpty)
            const ShimmerPost(),

          ...provider.posts.map((post) =>
              PostCard(post: post)).toList(),

        ],
      ),
    );
  }
}
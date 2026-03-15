import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostCarousel extends StatefulWidget {

  final List<String> images;

  const PostCarousel({super.key, required this.images});

  @override
  State<PostCarousel> createState() => _PostCarouselState();
}

class _PostCarouselState extends State<PostCarousel> {

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        SizedBox(
          height: 350,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.images.length,
            itemBuilder: (context,index){

              return InteractiveViewer(
                minScale: 1,
                maxScale: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: widget.images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );

            },
          ),
        ),

        const SizedBox(height: 8),

        SmoothPageIndicator(
          controller: controller,
          count: widget.images.length,
          effect: const WormEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: Colors.black,
          ),
        )

      ],
    );
  }
}
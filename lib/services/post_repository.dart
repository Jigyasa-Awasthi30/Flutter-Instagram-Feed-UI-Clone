import '../models/post_model.dart';

class PostRepository {

  Future<List<PostModel>> fetchPosts(int page) async {

    await Future.delayed(const Duration(milliseconds: 1500));

    return List.generate(10, (index) {

      return PostModel(
        username: "user_$index",
        profileImage:
        "https://randomuser.me/api/portraits/men/${index + 1}.jpg",
        images: [
          "https://picsum.photos/500/500?random=$index",
          "https://picsum.photos/500/500?random=${index + 20}"
        ],
        caption: "Beautiful moment captured 📸",
      );

    });

  }

}
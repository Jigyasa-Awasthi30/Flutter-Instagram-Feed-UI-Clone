class PostModel {
  final String username;
  final String profileImage;
  final List<String> images;
  final String caption;

  PostModel({
    required this.username,
    required this.profileImage,
    required this.images,
    required this.caption,
  });
}
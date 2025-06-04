import 'package:pawfiki/models/post_tag_enum.dart';

class PostDetails {
  PostTagEnum tag;
  int commentCount;
  String userImageLink;
  String userName;
  String postTitle;
  String postBodyPreview;
  String postBody;
  String? postImageLink;

  PostDetails({
    required this.tag,
    required this.commentCount,
    required this.userImageLink,
    required this.userName,
    required this.postTitle,
    required this.postBodyPreview,
    required this.postBody,
    this.postImageLink,
  });
}

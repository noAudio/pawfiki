class PostData {
  String username;
  String postTitle;
  String tag;
  int commentCount;
  String userImageLink;
  String postBody;
  String? postImageLink;

  PostData({
    required this.username,
    required this.postTitle,
    required this.tag,
    required this.commentCount,
    required this.userImageLink,
    required this.postBody,
    this.postImageLink,
  });

  String postBodyPreview() =>
      postBody.length >= 100
          ? postBody.replaceRange(100, postBody.length, "...")
          : postBody;
}

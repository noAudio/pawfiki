import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/components/post.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/mock_data.dart' show posts;
import 'package:pawfiki/models/post_details.dart';

class GeneralFeed extends StatelessWidget {
  const GeneralFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (BuildContext context, state) {
        return ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Post(
              post: PostDetails(
                tag: posts[index]["tag"],
                commentCount: posts[index]["commentCount"],
                userImageLink: posts[index]["userPic"],
                userName: posts[index]["userName"],
                postTitle: posts[index]["postTitle"],
                postBodyPreview: posts[index]["postBodyPreview"],
                postBody: posts[index]["postBodyPreview"],
                comments: [],
                postImageLink:
                    posts[index]["postImageLink"] != ""
                        ? posts[index]["postImageLink"]
                        : null,
              ),
            );
          },
        );
      },
    );
  }
}

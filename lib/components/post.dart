import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/post_details.dart';
import 'package:pawfiki/models/post_tag_enum.dart';

class Post extends StatelessWidget {
  final PostDetails post;
  const Post({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (BuildContext context, state) {
        return Container(
          margin: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag and number of comments
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //   TODO: Extract to custom widget
                          //   Post tag
                          Text(
                            post.tag.name,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color:
                                  post.tag == PostTagEnum.update
                                      ? Colors.blue
                                      : post.tag == PostTagEnum.request
                                      ? Colors.green
                                      : post.tag == PostTagEnum.spotted
                                      ? Colors.orange
                                      : post.tag == PostTagEnum.help
                                      ? Colors.red
                                      : Colors.black,
                            ),
                          ),
                          //   Comments
                          Row(
                            children: [
                              Icon(Icons.mode_comment),
                              Text('${post.commentCount}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Profile pic and username
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(post.userImageLink),
                          ),
                          SizedBox(width: 5),
                          Text(post.userName),
                        ],
                      ),
                    ),
                    //   Post title
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        post.postTitle,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //   Post body preview
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(post.postBodyPreview),
                    ),
                    //   Post Image
                    post.postImageLink != null
                        ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(post.postImageLink!),
                          ),
                        )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/post_tag_enum.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  List<PostTagEnum> tags = PostTagEnum.values;
  late String dropdownValue = tags.first.name;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (BuildContext context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Title",
                      border: InputBorder.none,
                    ),
                  ),
                  Row(
                    children: [
                      Text("Post tag:"),
                      SizedBox(width: 10),
                      DropdownButton<String>(
                        value: dropdownValue,
                        items:
                            tags.map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem(
                                value: value.name,
                                child: Text(
                                  value.name,
                                  style: TextStyle(
                                    color:
                                        value == PostTagEnum.update
                                            ? Colors.blue
                                            : value == PostTagEnum.request
                                            ? Colors.green
                                            : value == PostTagEnum.spotted
                                            ? Colors.orange
                                            : value == PostTagEnum.help
                                            ? Colors.red
                                            : Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.photo),
                        SizedBox(),
                        Text("Add photo"),
                      ],
                    ),
                  ),
                  TextField(
                    maxLines: 20,
                    minLines: 5,
                    decoration: InputDecoration(
                      hintText: "Write your post details here",
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    child: Text("Post", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

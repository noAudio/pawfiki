import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/components/resource_card.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/mock_data.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (BuildContext context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: resourceList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (_, index) {
              return ResourceCard(
                resourceName: resourceList[index]["name"],
                resourceTypeEnum: resourceList[index]["type"],
                resourceImageLink: resourceList[index]["resourceImage"],
                phone: resourceList[index]["phone"],
                websiteLink: resourceList[index]["website"],
                mapLink: resourceList[index]["mapLink"],
              );
            },
          ),
        );
      },
    );
  }
}

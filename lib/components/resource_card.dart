import 'package:flutter/material.dart';

import '../models/resource_type_enum.dart';

class ResourceCard extends StatelessWidget {
  final String resourceName;
  final ResourceTypeEnum resourceTypeEnum;
  final String resourceImageLink;
  final String phone;
  final String websiteLink;
  final String mapLink;

  const ResourceCard({
    super.key,
    required this.resourceName,
    required this.resourceTypeEnum,
    required this.resourceImageLink,
    required this.phone,
    required this.websiteLink,
    required this.mapLink,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // TODO: Change colour based on type
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //   Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(resourceName, style: TextStyle(fontSize: 18)),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(resourceImageLink, height: 100),
              ),
              SizedBox(
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          //   TODO: Launch dialler with contact
                        },
                        icon: Icon(Icons.phone),
                        tooltip: phone,
                      ),
                      IconButton(
                        onPressed: () {
                          //   TODO: Launch default browser with website as target
                        },
                        icon: Icon(Icons.public),
                        tooltip: websiteLink,
                      ),
                      IconButton(
                        onPressed: () {
                          //   TODO: Launch default maps app with destination
                        },
                        icon: Icon(Icons.pin_drop),
                        tooltip: mapLink,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

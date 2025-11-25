import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/constants.dart';

class ContainerWidget extends StatelessWidget {

  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

    final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsGeometry.symmetric(vertical: 2.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               title,
                style: KTextStyle.titleTextStyle,
              ),
              Text(
                description,
                style: KTextStyle.descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/widgets/container_widget.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home Page'),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
            ContainerWidget(
              title: 'This is a title',
              description: 'Some descriptions about the end of nothing',
            ),
          ],
        ),
      ),
    );
  }
}

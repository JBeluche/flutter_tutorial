import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/pages/course_page.dart';
import 'package:flutter_tutorial/views/widgets/container_widget.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';
import  'package:flutter_tutorial/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.keyConcepts,
      KValue.cleanUi,
      KValue.fixBugs,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home Page', nextPage: CoursePage(),),
            //There was a colum here before, but three dots works as well...
            ...List.generate(list.length, (index) {
                return ContainerWidget(
                  title: list.elementAt(index),
                  description:
                      'This is the description for Container Widget number $index. It provides more details about the widget.',
                );
              }),
          ],
        ),
      ),
    );
  }
}

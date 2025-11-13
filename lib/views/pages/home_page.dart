import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/widgets/here_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Column(children: [HeroWidget()]),
        ],
      ),
    );
  }
}

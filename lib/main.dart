import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

//Material app

//Scaffold

//Stateless, screen will not change
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:  isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WidgetTree()
        );
      }
    );
  }
}

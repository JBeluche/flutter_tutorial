import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/constants.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

//Material app

//Scaffold

//Stateless, screen will not change
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? themeModeKey = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = themeModeKey ?? false; 
  }

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
          home: WelcomePage()
        );
      }
    );
  }
}

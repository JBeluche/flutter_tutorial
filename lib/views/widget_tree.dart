import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/pages/home_page.dart';
import 'package:flutter_tutorial/views/pages/profile_page.dart';
import 'package:flutter_tutorial/views/pages/settings_page.dart';
import 'package:flutter_tutorial/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.teal[700],
        actions: [
          IconButton(
            icon: Icon(
              isDarkModeNotifier.value ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              setState(() {});
            },
          ),
          IconButton(
            onPressed: () {
              // Navigator.pushReplacement( <-- this would replace the current page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage(title: "Settings")),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

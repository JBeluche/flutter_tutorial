import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/notifiers.dart';
import 'package:flutter_tutorial/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:   const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/face.png'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('LogOut'),
            onTap: () {
              selectedPageNotifier.value = 0;
               Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) { return WelcomePage(); },
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}
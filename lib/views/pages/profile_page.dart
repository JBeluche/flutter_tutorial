import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
            onEditingComplete: () => setState(() {}),
          ),
          Text(nameController.text),
          
          Checkbox.adaptive(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          CheckboxListTile.adaptive(
            tristate: true,
            title: const Text('Accept Terms'),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Switch.adaptive(value: isSwitched, onChanged: (  bool value) {
            setState(() {
              isSwitched = value;
            });
          }),
          SwitchListTile.adaptive(value: isSwitched, onChanged: ( bool value) {
            setState(() {
              isSwitched = value;
            });
          }, title: const Text('Enable Notifications')),
        ],
      ),
    );
  }
}

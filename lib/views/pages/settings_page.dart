import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal[700],
        //Pop example
        // leading: BackButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        // automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
                ElevatedButton(
                onPressed: () {
                 showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text('alert dialog'),
                    content: Text('alert tet'),
                    actions: [
                      FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                 });
                },
                child: Text('Open dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('This is a snackbar'),
                      duration: Duration(seconds: 100),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open snackbar'),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text('element one')),
                  DropdownMenuItem(value: 'e2', child: Text('element 2')),
                  DropdownMenuItem(value: 'e3', child: Text('element III')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
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
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                title: const Text('Enable Notifications'),
              ),
              Slider.adaptive(
                value: sliderValue,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
                min: 0,
                max: 100,
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () => print('Image Tapped'),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white70,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('click me'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('click me')),
              FilledButton(onPressed: () {}, child: Text('click me')),
              TextButton(onPressed: () {}, child: Text('click me')),
              OutlinedButton(onPressed: () {}, child: Text('click me')),
              CloseButton(onPressed: () {}),
              BackButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

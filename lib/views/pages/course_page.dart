import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/classes/activity.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course Page')),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
             widget = Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasData) {
            Activity activity = snapshot.data;
             widget = Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: activity.activity), Text(activity.activity)]),
              ),
            );
          } else {
            widget = Center(child: Text('No data found'));
          }
          return widget;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded vs Flexible'),
        backgroundColor: Colors.teal[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(child:  Expanded(
                  child: Container(
                    color: Colors.teal,
                    height: 20.0,
                    child: Text(
                      'Expanded',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    height: 20.0,
                    child: Text(
                      'Expanded',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.orange,
                    height: 20.0,
                    child: Text(
                      'Flexible',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
             Row(
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.orange,
                    height: 20.0,
                    child: Text(
                      'Expanded',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    height: 20.0,
                    child: Text(
                      'Flexible',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

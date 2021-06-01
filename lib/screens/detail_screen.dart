import 'package:flutter/material.dart';

import '../widgets/detailed_widget.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
          color: Colors.white,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            DetailedWidget(
              Icons.assignment_turned_in_outlined,
              'Attendance',
            ),
            Divider(
              color: Colors.grey,
            ),
            DetailedWidget(
              Icons.assessment_outlined,
              'Marks',
            ),
            Divider(
              color: Colors.grey,
            ),
            Divider(
              color: Colors.grey,
            ),
            DetailedWidget(
              Icons.settings_outlined,
              'Settings',
            ),
            Divider(
              color: Colors.grey,
            ),
            DetailedWidget(
              Icons.help_outline_sharp,
              'Help & Support',
            ),
            Divider(
              color: Colors.grey,
            ),
            DetailedWidget(
              Icons.info_outline,
              'About Us',
            ),
          ],
        ),
      ),
    );
  }
}

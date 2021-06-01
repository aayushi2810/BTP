import 'package:flutter/material.dart';

import '../widgets/course_lab.dart';

class AllLabs extends StatefulWidget {
  @override
  _AllLabsState createState() => _AllLabsState();
}

class _AllLabsState extends State<AllLabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.circle,
            color: Colors.white,
          ),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: (){},
          ),
        ],
        title: Text(
          'Labs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Total Labs',
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey,
                ),
              ),
            ),
            CourseLab(
              'Physics Lab',
              '9:30 - 12:30 am',
            ),
            CourseLab(
              'Operating Systems Lab',
              '2:00 - 4:00 pm',
            ),
            CourseLab(
              'Computer Netwroks Lab',
              '9:00 - 11:00 am',
            ),
            CourseLab(
              'Advance Programming Lab',
              '4:00 - 6:00 pm',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: (){},
      ),
    );
  }
}

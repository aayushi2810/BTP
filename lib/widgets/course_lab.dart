import 'package:flutter/material.dart';

class CourseLab extends StatelessWidget {
  final String titleLab;
  final String timeSlot;

  CourseLab(
    this.titleLab,
    this.timeSlot,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                titleLab,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                timeSlot,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

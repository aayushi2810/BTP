import 'package:flutter/material.dart';

class DetailedWidget extends StatelessWidget {
  final String title;
  final icon;

  DetailedWidget(
    this.icon,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 15,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

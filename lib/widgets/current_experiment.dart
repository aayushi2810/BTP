import 'package:flutter/material.dart';

import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

class CurrentExperiment extends StatefulWidget {
  @override
  _CurrentExperimentState createState() => _CurrentExperimentState();
}

class _CurrentExperimentState extends State<CurrentExperiment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Name of Experiment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          Row(
            children: [
              Text(
                'Status of Experiment',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

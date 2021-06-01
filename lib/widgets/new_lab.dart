import 'package:flutter/material.dart';

class NewLab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Timings'),
              ),
              RaisedButton(
                onPressed: (){},
                child: Text('Add New Lab'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

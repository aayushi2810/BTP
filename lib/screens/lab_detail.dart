import 'package:flutter/material.dart';

class LabDetail extends StatefulWidget {
  @override
  _LabDetailState createState() => _LabDetailState();
}

class _LabDetailState extends State<LabDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: (){},
          ),],
        bottom: TabBar(
          tabs: [
            Tab(text: "REGULAR LAB"),
            Tab(text: "EXAM LAB"),
          ],
        ),
        title: Text(
          'Physics Lab',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: menu(),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 10,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Current Experiment',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Name of the experiment',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: null,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Pending Experiment',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Name of the experiment',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.arrow_drop_down_sharp),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget menu() {
  return Container(
    color: Colors.blue,
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: [
        Tab(
          text: "Home",
          icon: IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
          ),
        ),
        Tab(
          icon: IconButton(
            icon: Icon(Icons.qr_code_scanner),
            onPressed: null,
          ),
        ),
        Tab(
          text: "More",
          icon: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String barcode = "";
  
  Future scanBarCode() async {
    String barCodeResult = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      "Cancel",
      true,
      ScanMode.QR,
    );

    setState(() {
      barcode = barCodeResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: (){},
        ),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                height: 27,
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.qr_code_scanner),
                      onPressed: scanBarCode,
                      color: Colors.white,
                    ),
                    Text(
                      'Scan QR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                height: 27,
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View Experiments',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

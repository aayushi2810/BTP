import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Physics',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        errorColor: Colors.red,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontSize: 1000,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoggedIn = false;
  GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Physics',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: _isLoggedIn
            ? Column(
                children: [
                  Image.network(_userObj.photoUrl),
                  Text(_userObj.displayName),
                  Text(_userObj.email),
                  TextButton(
                      onPressed: () {
                        _googleSignIn.signOut().then((value) {
                          setState(() {
                            _isLoggedIn = false;
                          });
                        }).catchError((e) {});
                      },
                      child: Text("Logout"))
                ],
              )
            : Center(
                child: ElevatedButton(
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _googleSignIn.signIn().then((userData) {
                      setState(() {
                        _isLoggedIn = true;
                        _userObj = userData;
                      });
                    }).catchError((e) {
                      print(e);
                    });
                  },
                ),
              ),
      ),
    );
  }
}

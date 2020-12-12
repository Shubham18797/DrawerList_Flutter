import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String title;

  ProfileScreen(this.title);

  // ProfileScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title))
    );
  }
}
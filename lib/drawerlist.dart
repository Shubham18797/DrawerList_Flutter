

import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'Settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      routes: <String, WidgetBuilder> {
        "/a": (BuildContext context) => ProfileScreen("My Profile"),
        "/b": (BuildContext context) => Settings()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),

                  ),
                  Text('Shubham Chavan', style: TextStyle(
                    fontSize: 20,
                  ),
                    textAlign: TextAlign.center,

                  ),
                  Text('shubhamac18@gmail.com', style: TextStyle(
                    fontSize: 16,
                  ),
                    textAlign: TextAlign.center,

                  ),
                ],
              ),

              decoration: BoxDecoration(
                color: Colors.blue,
              ),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile', style: TextStyle(
                fontSize: 18
              ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
                // Navigator.pushNamed(context, '/profile_screen');
                Navigator.of(context).pushNamed("/a");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(
                  fontSize: 18
              ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
                Navigator.of(context).pushNamed("/b");
              },
            ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Log Out', style: TextStyle(
                fontSize: 18
            ),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
            // DrawerHeader(
            //
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     // margin: EdgeInsets.only(
            //     //     top: 30,
            //     //     bottom: 10
            //     // ),
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.blue
            //       // image: DecorationImage(image: )
            //
            //     ),
            //   ),
              // Text(
              //   'Shubham Chavan',
              //   style: TextStyle(
              //     fontSize: 22,
              //     color: Colors.black,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // Text(
              //   'shubhamac18@gmail.com',
              //   style: TextStyle(
              //     color: Colors.black,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
            // )

          ],
        ),
      ),
    );
  }
}
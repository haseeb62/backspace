import 'package:backspace/pages/Notification.dart';
import 'package:flutter/material.dart';
import 'package:backspace/pages/newsfeed.dart';

class Instructor extends StatelessWidget {
  const Instructor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: const Text('Instructor Review',
              style: TextStyle(fontFamily: "Poppins")),
          actions: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Icon(Icons.search, color: Colors.black)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Noti()),
                    );
                  },
                ))
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

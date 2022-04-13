import 'package:backspace/pages/Notification.dart';
import 'package:flutter/material.dart';
import 'package:backspace/pages/newsfeed.dart';
import 'package:backspace/pages/subspacechat.dart';
import 'package:backspace/pages/Instructor.dart';

class SubSpace extends StatelessWidget {
  const SubSpace({Key? key}) : super(key: key);

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
          title:
              const Text('Sub Space', style: TextStyle(fontFamily: "Poppins")),
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
        body: 
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            child: Text("Joined Subspaces",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                )),
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 10)
            ),
        InkWell(
          child: SimpleCard(userName: "Gaming", imagePath: "/images/gaming.jpg"),
          onTap: (){
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SubSpaceChat(name: "Gaming", image: "/images/gaming.jpg", about: "asjkdbcajksbcafj",) ));
                    },
                    
        ),

        ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/newsFeed/post-body/posts-text.dart';
import '../components/newsFeed/post-header/user-icon-name.dart';
import 'Admindrawer.dart';
import 'NFeed.dart';
import 'PendingPosts.dart';

class Proved extends StatelessWidget {
  const Proved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDADADA),
      //backgroundColor: Colors.white,
      drawer: AdminDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text('Approved Posts'),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(
                icon: Icon(Icons.search), onPressed: () {},
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Noti()),
                //   );
                // },
              ))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          FutureBuilder(
              future: completePost(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.40),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                // else if()
                final posts = snapshot.data;
                return Column(
                  children: <Widget>[
                    for (var post in posts)
                      if ((post["subspace"] == null ||
                              post["subspace"] == "") &&
                          (post["approved"] == true))

                        // displaying in newsfeed ////////////////////////////
                        // Text("data")
                        AdminPost(
                          userName: post["username"],
                          userimage: post["userImageURL"],
                          time: "3 min",
                          Posttxt: post["content"],
                          PostImg: post["postImageURL"],
                          docid: post["postID"],
                        ),

                    // Post(
                    //   userName: post["username"],
                    //   userimage: post["userImageURL"],
                    //   time: "5 min",
                    //   postcontent: post["content"],
                    //   PostImg: post["postImageURL"],
                    //   likes: post["likes"],
                    //   postID: post["postID"],
                    //   functionalComment: true,
                    //   userAbout: post["userAbout"],
                    // ),
                  ],
                );
              })

          // Post(
          //   userName: "Haseeb",
          //   userimage: "assets/images/bill-gates.jpg",
          //   time: "4 min",
          //   Posttxt: "Apun Eeeeenstance create kare lai",
          //   //PostImg: "assets/images/Map.png",
          // )
        ],
      ),
    );
  }
}

class AdminPost extends StatelessWidget {
  final String userName;
  final String userimage;
  final String time;
  final String Posttxt;
  final String? PostImg;
  String docid;

  AdminPost(
      {required this.userName,
      required this.userimage,
      required this.time,
      required this.Posttxt,
      this.PostImg,
      required this.docid});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10)),
          UserIconName(
            userImage: userimage,
            username: userName,
            postTime: time,
            // userabout: "",
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
            child: PostBody(postSummary: Posttxt),
            // child:
            //     Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //   Text(Posttxt,
            //       style: const TextStyle(fontWeight: FontWeight.w500)),
            // ]),
          ),
          if (PostImg != null && PostImg != "") Image.network(PostImg!),
          Divider(height: 1),
          PostFooter(
            docid: docid,
          ),
        ],
      ),
    );
  }
}

// Display Like and Comment Post Footer Bar
class PostFooter extends StatefulWidget {
  String docid;
  PostFooter({Key? key, required this.docid}) : super(key: key);

  @override
  _PostFooter createState() => _PostFooter();
}

class _PostFooter extends State<PostFooter> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          //color: Colors.green,
          child: Text(
            "Reject",
            style: TextStyle(fontSize: 14.0, color: Colors.red),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: Colors.red,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: () {
            DeletePostFromDB(widget.docid);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Proved()));
          },
        ),
      ],
    );
  }
}

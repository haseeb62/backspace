// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context, false),
        ),
        title:
            const Text('Edit Profile', style: TextStyle(fontFamily: "Poppins")),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: MyCustomForm()),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  MyCustomForm({Key? key}) : super(key: key);

  CollectionReference users = FirebaseFirestore.instance.collection('UserData');

  Future<void> getUsername(email) async {
    var ref = await FirebaseFirestore.instance
        .collection("UserData")
        .where("email", isEqualTo: email)
        .get();
    var s =
        ref.docs[0].reference.update({'about': "cuntttttttttt world hehe!!"});
    // print(s);
  }

  // updateUser();
  @override
  Widget build(BuildContext context) {
    getUsername("23100044@lums.edu.pk");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            "Profile",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        ),
        OutlineButton(
          child: const Text(
            "Upload",
            style: TextStyle(fontSize: 20.0),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            "Your Name",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xfff9f9fa),
              filled: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff000000)),
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            "About",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: TextField(
            //cursorColor: Theme.of(context).cursorColor,
            // maxLength: 20,
            decoration: InputDecoration(
              fillColor: Color(0xfff9f9fa),
              filled: true,
              //icon: Icon(Icons.favorite),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff000000)),
              ),
            ),
          ),
        ),
        MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () {
            print("hello world");
            // String val = "";
            // if (formkey1.currentState!.validate() &&
            //     formkey2.currentState!.validate() &&
            //     formkey3.currentState!.validate() &&
            //     formkey4.currentState!.validate()) {
            //   // Future<dynamic>
            //   // String val =
            //   signUp(
            //       emailController.text,
            //       password1Controller.text,
            //       nameController.text,
            //       context);
            // }
          },
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: const Text(
            "Update",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
        )
      ],
    );
  }
}

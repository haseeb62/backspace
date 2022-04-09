import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () => Navigator.pop(context, false),
            ),
            title: const Text('FAQs', style: TextStyle()),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: const TextFAQ()),
    );
  }
}

class TextFAQ extends StatelessWidget {
  const TextFAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 24, top: 44),
          child: Text(
            "What is a Subspace?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Text(
            "A subspace is a forum made to cater the needs of people’s interests, hobbies and passions. Theres a subspace for whatever you are interested in, where you can interact with other people with similar interests. You can have discussions, post pictures, links and videos.",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff79747E)),
          ),
        ),
      ],
    );
  }
}

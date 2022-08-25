import 'package:flutter/material.dart';
import 'package:kgisl_gi/screens/about.dart';
import 'package:kgisl_gi/screens/contact_us.dart';
import 'package:kgisl_gi/screens/faq.dart';
import 'package:kgisl_gi/screens/home.dart';
import 'package:kgisl_gi/screens/news_n_events.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide.none))),
            child: Text(
              "Sign In/Sign Up",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LatestNewsNEventsScreen();
                },
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide.none))),
            child: Text(
              "News & Events",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ContactUsScreen();
                },
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide.none))),
            child: Text(
              "Contact Us",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AboutUsScreen();
                },
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide.none))),
            child: Text(
              "About Us",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return FAQScreen();
                },
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: BorderSide.none))),
            child: Text(
              "FAQ",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

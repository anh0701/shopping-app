import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/buttons.dart';

import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './SignInPage.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;

  const HomePage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('lib/images/welcome.png', width: 190, height: 190),
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 0),
            child: const Text('Welcome!', style: logoStyle),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(bottom: 0),
            child:   FlatBtn('Sign In', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rotate,
                      duration: const Duration(seconds: 1),
                      child: SignInPage(
                        pageTitle: '',
                      )));
            }),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.all(0),
            child:   OutlineBtn('Sign Up', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rotate,
                      duration: const Duration(seconds: 1),
                      child: SignUpPage(
                        pageTitle: '',
                      )));
              // Navigator.of(context).pushReplacementNamed('/signup');
            }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Langauage:', style: TextStyle(color: darkText)),
                Container(
                  margin: const EdgeInsets.only(left: 6),
                  child: const Text('English ›',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      )),
      backgroundColor: bgColor,
    );
  }
}

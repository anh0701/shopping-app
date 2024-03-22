import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './Dashboard.dart';

class SignInPage extends StatefulWidget {
  final String pageTitle;

  const SignInPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const Text('Sign In',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signup');
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const SignUpPage(
                          pageTitle: '',
                        )));
              },
              child: const Text('Sign Up', style: contrastText),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              height: 245,
              width: double.infinity,
              decoration: authPlateDecoration,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Welcome Back!', style: h3),
                      const Text('Howdy, let\'s authenticate', style: taglineText),
                      TextInput('Username'),
                      PasswordInput('Password'),
                      TextButton(
                        onPressed: () {},
                        child:
                            const Text('Forgot Password?', style: contrastTextBold),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    right: -15,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const Dashboard(
                                  pageTitle: '',
                                )));
                      },
                      // color: primaryColor,
                      // padding: EdgeInsets.all(13),
                      // shape: CircleBorder(),
                      child: const Padding(
                        padding: EdgeInsets.all(13),
                        child: Icon(Icons.arrow_forward, color: white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

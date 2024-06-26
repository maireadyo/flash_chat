import 'package:flash_chat/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {},
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Your Password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              colour: Colors.lightBlueAccent,
              onPressed: () {},
              title: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}

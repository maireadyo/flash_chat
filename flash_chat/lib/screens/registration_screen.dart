import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              child: SizedBox(
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
                  kTextFieldDecoration.copyWith(hintText: 'Enter Your Email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                colour: Colors.blueAccent,
                onPressed: () {},
                title: 'Registration'),
          ],
        ),
      ),
    );
  }
}

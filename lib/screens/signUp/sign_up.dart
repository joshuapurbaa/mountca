import 'package:flutter/material.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/responsive/web/page/sign_up_screen_web.dart';

import 'components/create_acc_button.dart';
import 'components/google_button.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static const nameRoute = '/signupPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return SignUpForMobile();
          } else {
            return SignUpForWeb();
          }
        },
      ),
    );
  }
}

class SignUpForMobile extends StatelessWidget {
  const SignUpForMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 185,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/header-image.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Get started for free',
            style: titleText24,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account?',
                style: regularText16,
              ),
              SizedBox(width: 4),
              Text(
                'Log In',
                style: regularTextBlue.copyWith(fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          GooggleButton(),
          SizedBox(
            height: 20,
          ),
          Text(
            'or',
            style: regularText14,
          ),
          SizedBox(
            height: 10,
          ),
          SignUpForm(),
          SizedBox(
            height: 27,
          ),
          CreateAccButton(
            height: 60,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mountca/screens/signUp/components/create_acc_button.dart';
import 'package:mountca/screens/signUp/components/google_button.dart';
import 'package:mountca/screens/signUp/components/sign_up_form.dart';

import '../../../constanst.dart';

class SignUpForWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            child: Image.asset(
              'assets/images/header-image.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
        )
      ],
    );
  }
}

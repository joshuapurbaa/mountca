import 'package:flutter/material.dart';
import 'package:mountca/responsive/responsive.dart';

import '../../../constanst.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField('Email', 'mountca@gmail.com', false),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        buildTextField('Create Password', 'password', true),
      ],
    );
  }

  Widget buildTextField(String title, String hint, bool password) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            title,
            style: regularText16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: Responsive.isMobile(context) ? double.infinity : 350,
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: TextFormField(
            cursorColor: blackLicoriceColor,
            obscureText: password ? _isObscure : false,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              suffixIcon: password
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: _isObscure
                          ? Icon(
                              Icons.visibility_off,
                              color: greyMischkaColor,
                            )
                          : Icon(
                              Icons.visibility,
                              color: blackLicoriceColor,
                            ),
                    )
                  : null,
            ),
          ),
        )
      ],
    );
  }
}

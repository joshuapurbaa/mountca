import 'package:flutter/material.dart';
import 'package:mountca/responsive/responsive.dart';

import '../../../constanst.dart';

class GooggleButton extends StatelessWidget {
  const GooggleButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Responsive.isMobile(context) ? double.infinity : 350,
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Color(0xFFA4B0BE),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google-icon.png',
            height: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Sign up with Google',
            style: semiBoldText16,
          ),
        ],
      ),
    );
  }
}

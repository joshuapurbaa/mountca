import 'package:flutter/material.dart';
import 'package:mountca/responsive/responsive.dart';
import 'package:mountca/screens/home_page.dart';

import '../../../constanst.dart';

class CreateAccButton extends StatelessWidget {
  const CreateAccButton({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: whiteColor,
      highlightColor: whiteColor,
      onTap: () {
        Navigator.pushReplacementNamed(context, HomePage.nameRoute);
      },
      child: Container(
        height: height,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: Responsive.isDesktop(context) ? 350 : double.infinity,
        decoration: BoxDecoration(
          color: neonBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Text(
          'Create Account',
          style: semiBoldText16.copyWith(color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}

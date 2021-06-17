import 'package:flutter/material.dart';

import '../../../constanst.dart';

class ChiefWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: neonBlueColor)),
            child: Image.asset('assets/images/profile_chief.png'),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bakrie Suparno',
                  style: semiBoldText14,
                ),
                Text(
                  'Jawa Tengah',
                  style: regularText12.copyWith(color: greyMischkaColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

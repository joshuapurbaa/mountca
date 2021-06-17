import 'package:flutter/material.dart';

import '../../../constanst.dart';

class CardTopForChief extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
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
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ketua',
                style: mediumText.copyWith(
                  fontSize: 12,
                ),
              ),
              Text('Bakrie Suparno', style: boldText14),
            ],
          ),
          Spacer(),
          Text(
            '3/6 ',
            style: boldText14.copyWith(
              color: yellowRajahColor,
            ),
          ),
          Text(
            'anggota',
            style: mediumText.copyWith(fontSize: 10),
          )
        ],
      ),
    );
  }
}

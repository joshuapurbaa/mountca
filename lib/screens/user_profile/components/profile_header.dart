import 'package:flutter/material.dart';

import '../../../constanst.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          left: 10,
          top: 14,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 24, bottom: 10),
          child: Column(
            children: [
              Text(
                'Your Profile',
                style: titleText20,
              ),
              SizedBox(
                height: mediaQueryHeight * 0.04,
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: neonBlueColor),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Image.asset(
                    'assets/images/profile_user.png',
                  ),
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Text('James Young', style: semiBoldText16),
              SizedBox(
                height: 5,
              ),
              Text(
                'jamesyoung@gmail.com',
                style: regularText14.copyWith(
                  color: greyMischkaColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

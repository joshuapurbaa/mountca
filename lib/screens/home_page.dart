import 'package:flutter/material.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/screens/mountain_destination/mountain_destination.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homePage';

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: mediaQueryHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/background-image.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: mediaQueryHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: mediaQueryHeight * 0.12,
                ),
                Image.asset(
                  'assets/images/logo-homepage.png',
                  height: 100,
                ),
                Text(
                  'Mountca',
                  style: boldText50.copyWith(
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  'Grouping & Hiking',
                  style: semiBoldText25.copyWith(
                    color: greyNobelColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Find a group for hiking, and get the best\ninformation for your destination',
                    style: semiBoldText12.copyWith(
                      color: greyNobelColor.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, MountainDestination.nameRoute);
                  },
                  child: Text(
                    'Get Started',
                    style: boldText16,
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/screens/mountain_destination/mountain_destination.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';

import '../../../constanst.dart';

class HeaderForWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthMiddle = MediaQuery.of(context).size.width -
        mediaQueryWidthRight -
        mediaQueryWidthLeft;

    var width990 = MediaQuery.of(context).size.width < 990;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(
                context, MountainDestination.nameRoute);
          },
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Container(
              alignment: Alignment.center,
              width: mediaQueryWidthLeft,
              child: Text(
                'MountCa',
                style: width990
                    ? boldText22.copyWith(color: whiteColor)
                    : boldText30.copyWith(color: whiteColor),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: mediaQueryWidthMiddle,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari nama gunung',
                  hintStyle: TextStyle(fontSize: 12),
                  fillColor: whiteColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/icons/Icon-Filter.svg'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '14 ',
                  style: semiBoldText12.copyWith(
                      color: whiteColor.withOpacity(0.8)),
                ),
                Text(
                  'gunung di ',
                  style: regularText12.copyWith(
                      color: whiteColor.withOpacity(0.8)),
                ),
                Text(
                  'Jawa',
                  style: regularText12.copyWith(
                      fontWeight: FontWeight.bold,
                      color: whiteColor.withOpacity(0.8)),
                ),
              ],
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, UserProfileScreen.nameRoute);
          },
          child: Container(
            width: mediaQueryWidthRight,
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Profile',
                  style: semiBoldText12.copyWith(color: whiteColor),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constanst.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              color: greyMischkaColor,
              blurRadius: 4,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 31,
              width: 31,
              decoration: BoxDecoration(
                  color: neonBlueColor.withOpacity(0.2),
                  shape: BoxShape.circle),
              child: SvgPicture.asset(
                'assets/icons/Icon-Gunung.svg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gunung Semeru',
                    style: semiBoldText12,
                  ),
                  Text(
                    'via Ranu Pane',
                    style: regularText12.copyWith(color: greyMischkaColor),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(color: neonBlueColor, width: 2),
              ),
              child: Text(
                'Detail',
                style: semiBoldText10.copyWith(color: neonBlueColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

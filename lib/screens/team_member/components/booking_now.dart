import 'package:flutter/material.dart';

import '../../../constanst.dart';

class BookingNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
      padding: EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: greenFernColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Yeay, Kamu sudah bisa',
              style: regularText12.copyWith(color: greenFernColor),
            ),
            SizedBox(
              width: 2.5,
            ),
            Text(
              'booking sekarang!',
              style: semiBoldText12.copyWith(
                color: greenFernColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

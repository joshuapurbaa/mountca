import 'package:flutter/material.dart';
import 'package:mountca/screens/team_member/team_member.dart';

import '../../../constanst.dart';

class PriceAndJoin extends StatelessWidget {
  const PriceAndJoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rp. 19.000',
                style: boldText17.copyWith(color: neonBlueColor),
              ),
              Text(
                '/orang',
                style: mediumText.copyWith(fontSize: 12),
              )
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, TeamMemberScreen.nameRoute);
            },
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: neonBlueColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                'Gabung tim',
                style: boldText14.copyWith(color: whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

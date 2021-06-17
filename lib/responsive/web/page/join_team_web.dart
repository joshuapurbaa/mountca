import 'package:flutter/material.dart';
import 'package:mountca/responsive/web/components/nav_bar.dart';
import 'package:mountca/responsive/web/components/card_join_team.dart';
import 'package:mountca/responsive/web/components/price_and_join_web.dart';

import '../../../constanst.dart';

class JoinTeamPageWeb extends StatelessWidget {
  const JoinTeamPageWeb({
    Key key,
    @required this.mountain,
    @required this.padHor,
    @required this.mediaQueryHeight,
  }) : super(key: key);

  final String mountain;
  final EdgeInsets padHor;
  final double mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthMiddle = MediaQuery.of(context).size.width -
        mediaQueryWidthRight -
        mediaQueryWidthLeft;

    var width990 = MediaQuery.of(context).size.width < 990;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavBarSearchFieldWeb(),
          SizedBox(
            height: 70,
          ),
          Container(
            width: mediaQueryWidthMiddle,
            margin: EdgeInsets.only(
                left: mediaQueryWidthLeft, right: mediaQueryWidthRight),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(color: greyMischkaColor.withOpacity(0.2)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: neonBlueColor,
                          child: Container(
                            padding: EdgeInsets.only(left: 24),
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  mountain,
                                  style: width990
                                      ? semiBoldText20
                                      : semiBoldText25,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '6 tim ditemukan',
                                  style: regularText14.copyWith(
                                      color: greyMischkaColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CardJoinTeam(
                          name: mountain,
                        ),
                      ],
                    )),
                //
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 5,
                    shadowColor: neonBlueColor,
                    child: PriceAndJoinWeb(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

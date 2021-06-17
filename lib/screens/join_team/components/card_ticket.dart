import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/screens/join_team/components/price_join.dart';
import '../components/card_top.dart';

import '../../../constanst.dart';

class TicketCard extends StatelessWidget {
  TicketCard({this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Column(
      children: [
        CardTopForChief(),
        buildHorizontalDottedLine(),
        Container(
          height: 190,
          width: double.infinity,
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: boldText17.copyWith(),
                ),
                Text(
                  'via Ranu Pane',
                  style: mediumText.copyWith(
                    fontSize: 12,
                    color: greyMischkaColor,
                  ),
                ),
                SizedBox(
                  height: mediaquery.height * 0.03,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        buildCirclePinLocation(
                          neonBlueColor,
                          whiteColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: SvgPicture.asset(
                              'assets/icons/dot-line-vertical.svg'),
                        ),
                        buildCirclePinLocation(
                          whiteSmokeColor,
                          neonBlueColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berangkat',
                          style: regularText12.copyWith(
                            color: greyNobelColor,
                          ),
                        ),
                        Text(
                          'Sen, 2 Mei 2021 07:00 WIB',
                          style: mediumText.copyWith(
                            fontSize: 14,
                            color: blackLicoriceColor,
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          'Pulang',
                          style: regularText12.copyWith(
                            color: greyNobelColor,
                          ),
                        ),
                        Text(
                          'Rab, 4 Mei 2021 15:00 WIB',
                          style: mediumText.copyWith(
                            fontSize: 14,
                            color: blackLicoriceColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          color: whiteColor,
          child: Row(
            children: [
              buildHalfCircle(
                BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              Expanded(
                child: buildHorizontalDottedLine(),
              ),
              buildHalfCircle(
                BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 82,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: PriceAndJoin(),
        ),
      ],
    );
  }

  Widget buildCirclePinLocation(Color bgColor, Color iconColor) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
      child: Icon(
        Icons.location_pin,
        color: iconColor,
        size: 14,
      ),
    );
  }

  Widget buildHalfCircle(BorderRadiusGeometry borderadius) {
    return SizedBox(
      height: 25,
      width: 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderadius,
          color: backGroundColor,
        ),
      ),
    );
  }

  Widget buildHorizontalDottedLine() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / 10).floor(),
            (index) => SizedBox(
              height: 1,
              width: 7,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: greyMischkaColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        );
      },
    );
  }
}

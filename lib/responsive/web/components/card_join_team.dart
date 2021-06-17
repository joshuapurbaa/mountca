import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constanst.dart';

class CardJoinTeam extends StatelessWidget {
  CardJoinTeam({this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;

    var width990 = MediaQuery.of(context).size.width < 990;
    return Card(
      elevation: 5,
      shadowColor: neonBlueColor,
      child: Container(
        padding: width990 ? EdgeInsets.all(10) : EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: width990 ? 40 : 50,
                  width: width990 ? 40 : 50,
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
                        fontSize: width990 ? 8 : 12,
                      ),
                    ),
                    Text('Bakrie Suparno',
                        style: width990 ? boldText12 : boldText14),
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
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: width990
                  ? EdgeInsets.only(
                      left: 20,
                      top: 40,
                    )
                  : EdgeInsets.only(left: 60, top: 40),
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
                              fontSize: width990 ? 12 : 14,
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
                              fontSize: width990 ? 12 : 14,
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
          ],
        ),
      ),
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

  Widget buildHorizontalDottedLine() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / 20).floor(),
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

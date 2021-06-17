import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/screens/join_team/join_team.dart';
import 'package:mountca/screens/mountain_description/mountain_description.dart';

import '../../../constanst.dart';

class MountainInfoCard extends StatelessWidget {
  const MountainInfoCard({
    Key key,
    this.info,
  }) : super(key: key);

  final MountainDestination info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Container(
        height: 184,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
                color: greyMischkaColor.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 2))
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    ),
                  ),
                  child: InkWell(
                    highlightColor: neonBlueColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        MountainDescription.nameRoute,
                        arguments: {
                          'imageAsset': info.imageAsset,
                          'mountainName': info.mountainName,
                          'description': info.description,
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 15, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    info.imageAsset,
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Durasi',
                                  style: robotoRegularText10,
                                ),
                                Text(
                                  info.duration,
                                  style: robotoBoldText10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, right: 15, bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      StatusWidget(info: info),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        info.mountainName,
                                        style: boldText16,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            info.climberAmount,
                                            style: robotoBoldText10.copyWith(
                                                color: neonBlueColor),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            '/ tim',
                                            style: robotoRegularText8,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                        'assets/icons/Icon-Info.svg'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15.0),
                  ),
                ),
                child: buildButton(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: whiteSmokeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Text(
              'Buat tim',
              style: boldText12.copyWith(
                color: neonBlueColor,
              ),
            ),
          ),
        ),
        Flexible(
          child: InkWell(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                JoinTeamScreen.nameRoute,
                arguments: info.mountainName,
              );
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: neonBlueColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Text(
                'Gabung tim',
                style: boldText12.copyWith(color: whiteColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    Key key,
    @required this.info,
  }) : super(key: key);

  final MountainDestination info;

  Widget _buildStatus(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: greenFernColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        info.status[index],
        style: boldText8.copyWith(
          color: greenFernColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: info.status
          .asMap()
          .entries
          .map(
            (MapEntry map) => _buildStatus(map.key),
          )
          .toList(),
    );
  }
}

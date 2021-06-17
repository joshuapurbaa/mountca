import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/screens/join_team/join_team.dart';
import 'package:mountca/screens/mountain_description/mountain_description.dart';

import '../../../constanst.dart';

class MountainInfoCardWeb extends StatelessWidget {
  const MountainInfoCardWeb({
    Key key,
    this.info,
  }) : super(key: key);

  final MountainDestination info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    ),
                  ),
                  child: InkWell(
                    highlightColor: neonBlueColor,
                    hoverColor: neonBlueColor,
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
                          'status': info.status,
                        },
                      );
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(15)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                info.imageAsset,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 2,
                          child: StatusWidget(info: info),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: InfoDurationClimber(info: info),
                        ),
                        Positioned(
                          top: 20,
                          right: 20,
                          child: Container(
                            child:
                                SvgPicture.asset('assets/icons/Icon-Info.svg'),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: neonBlueColor.withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                info.mountainName,
                                style: boldText16.copyWith(color: whiteColor),
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
              style: boldText17.copyWith(
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
                style: boldText17.copyWith(color: whiteColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InfoDurationClimber extends StatelessWidget {
  const InfoDurationClimber({
    Key key,
    @required this.info,
  }) : super(key: key);

  final MountainDestination info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: greyMischkaColor.withOpacity(0.7),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Durasi ',
            style: robotoRegularText10.copyWith(color: whiteColor),
          ),
          Text(
            info.duration,
            style: robotoBoldText10.copyWith(color: whiteColor),
          ),
          Text(
            info.climberAmount,
            style: robotoRegularText10.copyWith(color: whiteColor),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            '/ tim',
            style: robotoRegularText8.copyWith(color: whiteColor),
          ),
        ],
      ),
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
        color: greenFernColor.withOpacity(0.7),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        info.status[index],
        style: semiBoldText10.copyWith(
          color: whiteColor,
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

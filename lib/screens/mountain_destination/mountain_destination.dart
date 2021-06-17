import 'package:flutter/material.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/responsive/web/page/mountain_destination_web.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';
import 'components/mountain_info_card.dart';
import 'components/search_field.dart';

class MountainDestination extends StatefulWidget {
  static const nameRoute = '/mountainListPage';

  @override
  _MountainDestinationState createState() => _MountainDestinationState();
}

class _MountainDestinationState extends State<MountainDestination> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: neonBlueColor.withOpacity(0.8),
        onPressed: () {
          Navigator.pushNamed(
            context,
            UserProfileScreen.nameRoute,
          );
        },
        child: Icon(Icons.account_circle),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return MountainListForMobile(mediaQueryHeight: mediaQueryHeight);
          } else if (constraints.maxWidth <= 1200) {
            return MountainListForWeb(
              mediaQueryHeight: mediaQueryHeight,
              gridCount: 2,
            );
          } else {
            return MountainListForWeb(
              mediaQueryHeight: mediaQueryHeight,
              gridCount: 4,
            );
          }
        },
      ),
    );
  }
}

class MountainListForMobile extends StatelessWidget {
  const MountainListForMobile({
    Key key,
    @required this.mediaQueryHeight,
  }) : super(key: key);

  final double mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 20),
          decoration: BoxDecoration(
            color: neonBlueColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(5),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SearchField(),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
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
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(left: 24, top: 24, right: 24),
            itemCount: mountainDestinationList.length,
            itemBuilder: (BuildContext context, int index) {
              return MountainInfoCard(
                info: mountainDestinationList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/responsive/responsive.dart';
import 'package:mountca/responsive/web/page/join_team_web.dart';
import 'package:mountca/screens/join_team/components/card_ticket.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';

class JoinTeamScreen extends StatelessWidget {
  static const nameRoute = '/joinTeam';
  @override
  Widget build(BuildContext context) {
    final mountain = ModalRoute.of(context).settings.arguments as String;

    const padHor = EdgeInsets.symmetric(horizontal: defaultPadding);
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Responsive.isMobile(context)
          ? FloatingActionButton(
              backgroundColor: neonBlueColor.withOpacity(0.8),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  UserProfileScreen.nameRoute,
                );
              },
              child: Icon(Icons.account_circle),
            )
          : null,
      backgroundColor: backGroundColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return JoinTeamPageMobile(
                mountain: mountain,
                padHor: padHor,
                mediaQueryHeight: mediaQueryHeight);
          } else {
            return JoinTeamPageWeb(
                mountain: mountain,
                padHor: padHor,
                mediaQueryHeight: mediaQueryHeight);
          }
        },
      ),
    );
  }
}

class JoinTeamPageMobile extends StatelessWidget {
  const JoinTeamPageMobile({
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back)),
                  ),
                  Text(
                    mountain,
                    style: boldText16,
                  ),
                  Container(
                    child: SvgPicture.asset('assets/icons/Icon-Filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: padHor,
            child: Text(
              '6 tim ditemukan',
              style: regularText14.copyWith(color: greyMischkaColor),
            ),
          ),
          SizedBox(
            height: mediaQueryHeight * 0.02,
          ),
          Padding(
            padding: padHor,
            child: TicketCard(
              name: mountain,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: padHor,
            child: TicketCard(
              name: mountain,
            ),
          ),
        ],
      ),
    );
  }
}

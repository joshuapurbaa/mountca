import 'package:flutter/material.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/model/member_list.dart';
import 'package:mountca/responsive/responsive.dart';
import 'package:mountca/responsive/web/page/team_member_web.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';
import 'components/chief.dart';
import '../team_member/components/booking_now.dart';
import '../team_member/components/detail.dart';

import 'components/dash_line.dart';

class TeamMemberScreen extends StatelessWidget {
  static const nameRoute = '/joinTeamPage';
  @override
  Widget build(BuildContext context) {
    const padding24 = EdgeInsets.symmetric(horizontal: defaultPadding);
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
            return TeamMemberMobile(padding24: padding24);
          } else {
            return TeamMemberWeb();
          }
        },
      ),
    );
  }
}

class TeamMemberMobile extends StatelessWidget {
  const TeamMemberMobile({
    Key key,
    @required this.padding24,
  }) : super(key: key);

  final EdgeInsets padding24;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Detail(),
            ),
            Container(
              margin: padding24,
              child: DashLine(
                color: greyMischkaColor.withOpacity(0.5),
                height: 1,
              ),
            ),
            BookingNow(),
            Container(
              margin: padding24,
              child: Text(
                'Ketua',
                style: semiBoldText14.copyWith(color: greyMischkaColor),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: padding24,
              child: ChiefWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: padding24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Anggota',
                        style: semiBoldText14.copyWith(color: greyMischkaColor),
                      ),
                      Text(
                        ' (Full)',
                        style: semiBoldText12.copyWith(color: neonBlueColor),
                      ),
                    ],
                  ),
                  Text(
                    'Hapus',
                    style: regularText12.copyWith(color: redColor),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultPadding),
                width: double.infinity,
                child: Column(
                  children: [
                    Member(
                      info: memberList[0],
                    ),
                    Member(
                      info: memberList[1],
                    ),
                    Member(
                      info: memberList[2],
                    ),
                    Member(
                      info: memberList[3],
                    ),
                  ],
                )),
            SizedBox(
              height: 40,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Batalkan pendakian',
                  style: regularText14.copyWith(
                    color: greyMischkaColor,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 52,
              margin: padding24,
              width: double.infinity,
              decoration: BoxDecoration(
                color: neonBlueColor.withOpacity(0.2),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                'Pesan Sekarang',
                style: semiBoldText14.copyWith(
                  color: neonBlueColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 30),
              padding: padding24,
              child: Row(
                children: [
                  Text(
                    'Tim kamu lengkap, ',
                    style: regularText12.copyWith(color: greenFernColor),
                  ),
                  Text(
                    'tunggu apa lagi?',
                    style: semiBoldText12.copyWith(color: greenFernColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Member extends StatelessWidget {
  const Member({
    Key key,
    @required this.info,
  }) : super(key: key);

  final MemberList info;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: whiteColor)),
              child: Image.asset(info.profilePic),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.name,
                    style: semiBoldText14,
                  ),
                  Text(
                    info.origin,
                    style: regularText12.copyWith(color: greyMischkaColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

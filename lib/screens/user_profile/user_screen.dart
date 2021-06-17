import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/responsive/responsive.dart';
import 'package:mountca/responsive/web/page/user_profile_web.dart';
import 'package:mountca/screens/mountain_destination/mountain_destination.dart';
import 'package:mountca/screens/signUp/sign_up.dart';
import './components/profile_header.dart';

class UserProfileScreen extends StatelessWidget {
  static const nameRoute = '/userPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Responsive.isMobile(context)
          ? FloatingActionButton(
              backgroundColor: neonBlueColor.withOpacity(0.8),
              onPressed: () {
                Navigator.pushNamed(context, MountainDestination.nameRoute);
              },
              child: SvgPicture.asset(
                'assets/icons/Icon-Gunung.svg',
                color: whiteColor,
              ),
            )
          : null,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      SafeArea(
                        child: ProfileHeader(),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
                        color: whiteColor,
                        child: UserInfo(
                          style: semiBoldText16,
                          iconSize: 64,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          } else {
            return UserProfileWeb();
          }
        },
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
    @required this.style,
    @required this.iconSize,
  }) : super(key: key);

  final TextStyle style;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildUserInfo(
          svgIcon: 'assets/icons/user-edit.svg',
          infoName: 'Edit Profile',
          colors: yellowRajahColor,
          style: style,
          iconSize: iconSize,
        ),
        BuildUserInfo(
          svgIcon: 'assets/icons/user-payment.svg',
          infoName: 'Payment Method',
          colors: greenFernColor,
          style: style,
          iconSize: iconSize,
        ),
        BuildUserInfo(
          svgIcon: 'assets/icons/user-invite.svg',
          infoName: 'Invite Friend',
          colors: blueColor,
          style: style,
          iconSize: iconSize,
        ),
        BuildUserInfo(
          svgIcon: 'assets/icons/user-settings.svg',
          infoName: 'Settings',
          colors: neonBlueColor,
          style: style,
          iconSize: iconSize,
        ),
        BuildUserInfo(
          svgIcon: 'assets/icons/user-help.svg',
          infoName: 'Help Center',
          colors: greyMischkaColor,
          style: style,
          iconSize: iconSize,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/user-logout.svg'),
            SizedBox(
              width: 6,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SignUpScreen.nameRoute);
              },
              child: Text(
                'Log Out',
                style: regularText16.copyWith(
                  color: redColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BuildUserInfo extends StatelessWidget {
  const BuildUserInfo({
    Key key,
    @required this.svgIcon,
    @required this.infoName,
    @required this.colors,
    @required this.style,
    @required this.iconSize,
  }) : super(key: key);
  final String svgIcon;
  final String infoName;
  final Color colors;
  final TextStyle style;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    var borderRadiusCircular = BorderRadius.all(
      Radius.circular(15),
    );
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadiusCircular,
        child: InkWell(
          borderRadius: borderRadiusCircular,
          onTap: () {},
          child: Row(
            children: [
              Container(
                height: iconSize,
                width: iconSize,
                padding: EdgeInsets.symmetric(vertical: 19, horizontal: 22),
                decoration: BoxDecoration(
                  color: colors.withOpacity(0.2),
                  borderRadius: borderRadiusCircular,
                ),
                child: SvgPicture.asset(svgIcon),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                infoName,
                style: style,
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                size: 30,
                color: blackLicoriceColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mountca/screens/home_page.dart';
import 'package:mountca/screens/join_team/join_team.dart';
import 'package:mountca/screens/mountain_description/mountain_description.dart';
import 'package:mountca/screens/mountain_destination/mountain_destination.dart';
import 'package:mountca/screens/signUp/sign_up.dart';
import 'package:mountca/screens/team_member/team_member.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MountCa',
      initialRoute: SignUpScreen.nameRoute,
      routes: {
        SignUpScreen.nameRoute: (context) => SignUpScreen(),
        HomePage.nameRoute: (context) => HomePage(),
        MountainDestination.nameRoute: (context) => MountainDestination(),
        MountainDescription.nameRoute: (context) => MountainDescription(),
        JoinTeamScreen.nameRoute: (context) => JoinTeamScreen(),
        TeamMemberScreen.nameRoute: (context) => TeamMemberScreen(),
        UserProfileScreen.nameRoute: (context) => UserProfileScreen(),
      },
    );
  }
}

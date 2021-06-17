import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mountca/model/member_list.dart';
import 'package:mountca/responsive/responsive.dart';
import 'package:mountca/responsive/web/components/nav_bar.dart';
import 'package:mountca/screens/team_member/team_member.dart';

import '../../../constanst.dart';

class TeamMemberWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthMiddle = MediaQuery.of(context).size.width -
        mediaQueryWidthRight -
        mediaQueryWidthLeft;

    var widtht1140 = MediaQuery.of(context).size.width < 1140;
    var widtht810 = MediaQuery.of(context).size.width < 810;
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
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  shadowColor: neonBlueColor,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: Responsive.isMobile(context) ? 31 : 40,
                          width: Responsive.isMobile(context) ? 31 : 40,
                          decoration: BoxDecoration(
                              color: neonBlueColor.withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            'assets/icons/Icon-Gunung.svg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gunung Semeru',
                                style: Responsive.isMobile(context)
                                    ? semiBoldText12
                                    : semiBoldText16,
                              ),
                              Text(
                                'via Ranu Pane',
                                style: Responsive.isMobile(context)
                                    ? regularText12.copyWith(
                                        color: greyMischkaColor)
                                    : regularText14.copyWith(
                                        color: greyMischkaColor),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(color: neonBlueColor, width: 2),
                          ),
                          child: Text(
                            'Detail',
                            style:
                                semiBoldText10.copyWith(color: neonBlueColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shadowColor: neonBlueColor,
                        child: Container(
                          padding: widtht810
                              ? EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 24)
                              : EdgeInsets.all(24),
                          height: 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ketua',
                                style: semiBoldText14.copyWith(
                                    color: greyMischkaColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: neonBlueColor)),
                                    child: Image.asset(
                                        'assets/images/profile_chief.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bakrie Suparno',
                                          style: semiBoldText14,
                                        ),
                                        Text(
                                          'Jawa Tengah',
                                          style: regularText12.copyWith(
                                              color: greyMischkaColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Anggota',
                                        style: semiBoldText14.copyWith(
                                            color: greyMischkaColor),
                                      ),
                                      Text(
                                        ' (Full)',
                                        style: semiBoldText12.copyWith(
                                            color: neonBlueColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Hapus',
                                    style:
                                        regularText12.copyWith(color: redColor),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 24),
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
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Text(
                                  'Tim kamu lengkap, tunggu apa lagi?',
                                  style: regularText14.copyWith(
                                      color: greenFernColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shadowColor: neonBlueColor,
                        child: Container(
                          height: 150,
                          padding: widtht1140
                              ? EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 24)
                              : EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 24),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    'Yeay, Kamu sudah bisa booking sekarang!',
                                    style: regularText12.copyWith(
                                        color: greenFernColor),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: whiteSmokeColor,
                                          borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(15),
                                          ),
                                        ),
                                        child: Text(
                                          'Batalkan pendakian',
                                          style: semiBoldText16.copyWith(
                                            color: greyMischkaColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: InkWell(
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(15),
                                        ),
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color:
                                                neonBlueColor.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.horizontal(
                                              right: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            'Pesan sekarang',
                                            style: semiBoldText16.copyWith(
                                                color: neonBlueColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

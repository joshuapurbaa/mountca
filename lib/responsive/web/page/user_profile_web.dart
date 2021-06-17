import 'package:flutter/material.dart';
import 'package:mountca/responsive/web/components/nav_bar.dart';
import 'package:mountca/screens/user_profile/user_screen.dart';

import '../../../constanst.dart';

class UserProfileWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthMiddle = MediaQuery.of(context).size.width -
        mediaQueryWidthRight -
        mediaQueryWidthLeft;

    var widtht1400 = MediaQuery.of(context).size.width < 1400;
    var width930 = MediaQuery.of(context).size.width < 930;
    var widtht810 = MediaQuery.of(context).size.width < 810;
    return SingleChildScrollView(
      child: Column(
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Card(
                    elevation: 2,
                    shadowColor: greyMischkaColor,
                    child: Container(
                      padding: widtht810
                          ? EdgeInsets.symmetric(horizontal: 10, vertical: 24)
                          : EdgeInsets.all(24),
                      height: 600,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/profile_user.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(color: greyMischkaColor)),
                              child: Text(
                                'Pilih Foto',
                                style: semiBoldText12,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Besar file: maksimum 10.000.000 bytes (10 Megabytes). Ekstensi file yang diperbolehkan: .JPG .JPEG .PNG',
                              style: regularText12.copyWith(
                                  color: greyMischkaColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width930 ? 10 : 24,
                ),
                Expanded(
                  flex: widtht1400 ? 2 : 3,
                  child: Container(
                    height: 600,
                    padding: width930
                        ? EdgeInsets.symmetric(horizontal: 10, vertical: 24)
                        : EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: greyMischkaColor)),
                    child: UserInfo(
                      style: width930 ? semiBoldText14 : semiBoldText16,
                      iconSize: width930 ? 58 : 64,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

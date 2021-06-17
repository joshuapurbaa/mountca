import 'package:flutter/material.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/responsive/web/components/nav_bar.dart';
import 'package:mountca/screens/mountain_description/mountain_description.dart';

import '../../../constanst.dart';

class MountainDesWeb extends StatelessWidget {
  const MountainDesWeb({
    Key key,
    @required this.data,
    @required this.info,
  }) : super(key: key);

  final Map data;
  final MountainDestination info;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthMiddle = MediaQuery.of(context).size.width -
        mediaQueryWidthRight -
        mediaQueryWidthLeft;
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                      top: Radius.circular(20),
                    ),
                    child: Image.asset(
                      data['imageAsset'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['mountainName'],
                          style: boldText30,
                        ),
                        Divider(
                          height: 50,
                        ),
                        Text(
                          data['description'],
                          style: regularText12,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    hoverColor: backGroundColor,
                    highlightColor: backGroundColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      color: backGroundColor,
                      elevation: 7,
                      child: Container(
                        child: ButtonOnDescription(),
                      ),
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

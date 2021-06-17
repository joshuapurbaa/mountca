import 'package:flutter/material.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/responsive/web/components/mountain_info_card_web.dart';
import 'package:mountca/responsive/web/components/nav_bar.dart';

class MountainListForWeb extends StatelessWidget {
  const MountainListForWeb({
    Key key,
    @required this.mediaQueryHeight,
    @required this.gridCount,
  }) : super(key: key);

  final double mediaQueryHeight;
  final int gridCount;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthLeft = MediaQuery.of(context).size.width * 0.14;
    var mediaQueryWidthRight = MediaQuery.of(context).size.width * 0.14;
    return Column(
      children: [
        NavBarSearchFieldWeb(),
        Expanded(
          child: GridView.count(
            padding: EdgeInsets.only(
                left: mediaQueryWidthLeft,
                top: 70,
                right: mediaQueryWidthRight),
            crossAxisCount: gridCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: mountainDestinationList
                .map(
                  (info) => MountainInfoCardWeb(
                    info: info,
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

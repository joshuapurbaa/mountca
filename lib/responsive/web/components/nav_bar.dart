import 'package:flutter/material.dart';
import 'package:mountca/responsive/web/components/heder_mountDesti.dart';

import '../../../constanst.dart';

class NavBarSearchFieldWeb extends StatelessWidget {
  const NavBarSearchFieldWeb({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 20),
      decoration: BoxDecoration(
        color: neonBlueColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 8,
          ),
        ],
      ),
      child: SafeArea(
        child: HeaderForWeb(),
      ),
    );
  }
}

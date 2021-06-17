import 'package:flutter/material.dart';
import 'package:mountca/constanst.dart';
import 'package:mountca/model/mountain_list.dart';
import 'package:mountca/responsive/web/page/mountain_description_web.dart';

class MountainDescription extends StatefulWidget {
  static const nameRoute = '/mountainDescription';

  @override
  _MountainDescriptionState createState() => _MountainDescriptionState();
}

class _MountainDescriptionState extends State<MountainDescription> {
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    var heightTop = 320.0;
    // var heightBottom = MediaQuery.of(context).size.height - heightTop;
    return Scaffold(
      backgroundColor: backGroundColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return MountainDesMobile(heightTop: heightTop, data: data);
          } else {
            return MountainDesWeb(
                info: data[mountainDestinationList], data: data);
          }
        },
      ),
    );
  }
}

class MountainDesMobile extends StatelessWidget {
  const MountainDesMobile({
    Key key,
    @required this.heightTop,
    @required this.data,
  }) : super(key: key);

  final double heightTop;
  final Map data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: heightTop,
                color: backGroundColor,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(25),
                  ),
                  child: Image.asset(
                    data['imageAsset'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, top: 24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: greyNobelColor.withOpacity(0.7),
                    ),
                    child: Icon(
                      Icons.chevron_left_outlined,
                      size: 40,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Text(
                  data['mountainName'],
                  style: boldText30,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  data['description'],
                  style: regularText12,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonOnDescription extends StatelessWidget {
  const ButtonOnDescription({Key key, this.info}) : super(key: key);
  final MountainDestination info;
  @override
  Widget build(BuildContext context) {
    return Row(
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
              'Buat tim',
              style: boldText17.copyWith(
                color: neonBlueColor,
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: neonBlueColor,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(15),
              ),
            ),
            child: Text(
              'Gabung tim',
              style: boldText17.copyWith(color: whiteColor),
            ),
          ),
        ),
      ],
    );
  }
}

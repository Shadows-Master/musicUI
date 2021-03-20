import 'package:flutter/material.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class MusicCounter extends StatelessWidget {
  const MusicCounter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(horizontal: size * 2.5),
      margin: EdgeInsets.only(top: size * .8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '02:30',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                letterSpacing: .72,
                fontSize: fontSize(size: size * 1.3)),
          ),
          Text(
            '04:00',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                letterSpacing: .72,
                fontSize: fontSize(size: size * 1.3)),
          ),
        ],
      ),
    );
  }
}
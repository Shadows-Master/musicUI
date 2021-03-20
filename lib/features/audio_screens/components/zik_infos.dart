import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class ZikInfos extends StatelessWidget {
  const ZikInfos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Get Ready For This',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: .72,
                fontSize: fontSize(size: size * 2)),
          ),
          VerticalSpacing(of: size * .4),
          Text(
            'Party Starter Intro',
            style: TextStyle(
                color: kTextColor.withOpacity(.5),
                fontWeight: FontWeight.w700,
                letterSpacing: .72,
                height: 1.8,
                fontSize: fontSize(size: size * 1.8)),
          ),
        ],
      ),
    );
  }
}
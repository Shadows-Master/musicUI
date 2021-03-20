import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical(size: 18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? '',
            style: TextStyle(
                fontSize: fontSize(size: 20), fontWeight: FontWeight.w600),
          ),
          InkWell(
              onTap: (){},
              child: Text(
                subTitle ?? '',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: size * 1.1,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/home_screens/components/profile_avatar.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class AudioScreenAppBar extends StatelessWidget {
  const AudioScreenAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size * 2.9,
      left: size * 2,
      right: size * 2,
      child: Container(
        child: Row(
          children: [
            Container(
              height: size * 3,
              width: size * 3,
              margin: EdgeInsets.only(right: size * 4),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                  BorderRadius.circular(size * .5)),
              child: Padding(
                padding: EdgeInsets.only(left: size * .7),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: kTextColor,
                ),
              ),
            ),
            Text(
              'Now playing',
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: size * 1.8)),
            ),
            HorizontalSpacing(of: size * 17.5),
            Expanded(child: ProfileAvatar())
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/home_screens/components/play_button.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class AudioBottomSheet extends StatelessWidget {
  const AudioBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 62),
      decoration: BoxDecoration(
          gradient: kGradientColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size * 3),
            topRight: Radius.circular(size * 3),
          )),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size * 1.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlayButton(),
            HorizontalSpacing(of: size * 3),
            Text(
              'If It Ain\’t Me frankie steel',
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: size * 1.6)),
            ),
            HorizontalSpacing(of: size * 11),
            Flexible(
                child: Icon(
                  SimpleLineIcons.arrow_down,
                  color: whiteColor,
                ))
          ],
        ),
      ),
    );
  }
}
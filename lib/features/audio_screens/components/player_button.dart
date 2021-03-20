import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/home_screens/components/play_button.dart';
import 'package:music/utils/size_config.dart';

class PlayerButton extends StatelessWidget {
  const PlayerButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size * 1.2),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'lib/features/audio_screens/assets/icons/shuffle.svg',
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.skip_previous,
              color: kPrimaryColor,
              size: size * 3,
            ),
            onPressed: () {},
          ),
          PlayButton(
            iconColor: Colors.white,
            bgColor: kPrimaryColor,
            radius: size * 2.5,
            iconSize: size * 2.8,
          ),
          IconButton(
            icon: Icon(
              Icons.skip_next,
              color: kPrimaryColor,
              size: size * 3,
            ),
            iconSize: size * 2.8,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'lib/features/audio_screens/assets/icons/loading.svg',
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
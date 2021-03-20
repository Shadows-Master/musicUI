import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/size_config.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key key, this.onPress,
    this.bgColor, this.iconColor,
    this.radius, this.iconSize,
  }) : super(key: key);

  final Function onPress;
  final Color bgColor;
  final Color iconColor;
  final double radius;
  final double iconSize;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: (bgColor != null) ? kGradientColor : kGradientWhiteColor
        ),
        child: CircleAvatar(
          backgroundColor: bgColor != null ? Colors.transparent : whiteColor,
          radius: radius ?? size * 1.4,
          child: Icon(Icons.play_arrow, color:iconColor??kTextColor,),
        ),
      ),
    );
  }
}

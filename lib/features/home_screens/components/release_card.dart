import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/home_screens/components/play_button.dart';
import 'package:music/features/home_screens/data/album.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
    Key key, this.album,
  }) : super(key: key);

  final Album album;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 135),
      width: width(size: 148),
      margin: EdgeInsets.only(right: right(size: 12)),
      decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
          borderRadius: BorderRadius.circular(size * 2)
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Opacity(
            opacity: .65,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(album.cover),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(size * 2)
              ),
            ),
          ),
          Container(
            height: height(size: 40),
            width: width(size: 135),
            margin: EdgeInsets.only(bottom: size * 1.4),
            decoration: BoxDecoration(
                gradient: kGradientColor,
                borderRadius: BorderRadius.circular(size * 2)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size * .8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(album.title, style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: fontSize(size: 9.05)),),
                        Text(album.music, style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: fontSize(size: 8)),),
                      ],
                    ),
                  ),
                  PlayButton()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


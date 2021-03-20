import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/choose_music_screens/data/music_type.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class MusicTypeCard extends StatelessWidget {
  const MusicTypeCard({
    Key key, this.musicType, this.title='',
  }) : super(key: key);

  final MusicType musicType;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 100),
      width: width(size: 100),
      decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size*3.5),
            topRight: Radius.circular(size*.5),
            bottomLeft: Radius.circular(size*.5),
            bottomRight: Radius.circular(size*3.5),
          )
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: .65,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(musicType.image),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size*3.5),
                    bottomRight: Radius.circular(size*3.5),
                    topRight: Radius.circular(size*.5),
                    bottomLeft: Radius.circular(size*.5),
                  )
              ),
            ),
          ),
          Text(
            musicType.title ?? title,
            softWrap: true,
            style: TextStyle(
                color: Colors.white,
                fontSize: size*1.6,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}
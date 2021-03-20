import 'package:flutter/material.dart';
import 'package:music/utils/size_config.dart';

class PlayerBackground extends StatelessWidget {
  const PlayerBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: SizeConfig.screenHeight * .15,
        width: SizeConfig.screenWidth,
        color: Colors.white,
        child: Stack(
          children: [
            Opacity(
              opacity: .05,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'lib/features/audio_screens/assets/images/wave.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

import 'components/audio_bottom_sheet.dart';
import 'components/audio_screen_app_bar.dart';
import 'components/music_counter.dart';
import 'components/player_background.dart';
import 'components/player_button.dart';
import 'components/positioned_cover.dart';
import 'components/zik_cover.dart';
import 'components/zik_infos.dart';

class AudioMusicScreen extends StatefulWidget {
  @override
  _AudioMusicScreenState createState() => _AudioMusicScreenState();
}

class _AudioMusicScreenState extends State<AudioMusicScreen> {
  double _mValue = 120;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight * .5,
                  width: double.infinity,
                  decoration: BoxDecoration(gradient: kGradientColor),
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
                      AudioScreenAppBar(),
                      LeftCover(),
                      RightCover(),
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight,
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: SizeConfig.screenHeight * .2,
                        color: Colors.transparent,
                      ),
                      Container(
                        height: SizeConfig.screenHeight -
                            SizeConfig.screenHeight * .378,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(size * 3),
                              topRight: Radius.circular(size * 3),
                            )),
                      ),
                      ZikCover(),
                      Positioned(
                          bottom: bottom(size: size * 16.4),
                          child: Container(
                            child: Column(
                              children: [
                                ZikInfos(),
                                MusicCounter(),
                                sliderMuzik(),
                                PlayerButton()
                              ],
                            ),
                          )),
                      PlayerBackground()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: AudioBottomSheet(),
      ),
    );
  }

  Container sliderMuzik() {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(horizontal: size * 2.5),
      margin: EdgeInsets.only(top: size * .8),
      child: Slider.adaptive(
        value: _mValue,
        min: 0.0,
        max: 240,
        activeColor: kPrimaryColor,
        inactiveColor: sliderColor.withOpacity(.2),
        onChanged: (value) {
          setState(() {
            _mValue = value;
          });
          print('$_mValue');
        },
      ),
    );
  }
}
















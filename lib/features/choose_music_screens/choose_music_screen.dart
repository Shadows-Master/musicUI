import 'package:flutter/material.dart';
import 'package:music/features/choose_music_screens/data/music_type.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

import 'components/music_type_card.dart';

class ChooseMusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Container(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
                  margin: EdgeInsets.only(top: top(size: 55)),
                  child: Text('What music do you \nlike?',
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize(size: 30),
                      letterSpacing: .72
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
                    margin: EdgeInsets.only(top: top(size: 25)),
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1.3,
                      crossAxisSpacing: size * 1.6,
                      mainAxisSpacing: size * 1.6,
                      children: musicListTypes.map((model) => MusicTypeCard(musicType: model,)).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



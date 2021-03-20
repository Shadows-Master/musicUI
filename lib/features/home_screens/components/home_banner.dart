import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(size: 380),
      height: height(size: 126),
      margin: EdgeInsets.only(right: right(size: 12), top: top(size: 18)),
      decoration: BoxDecoration(
          gradient: kPrimaryGradientColor,
          borderRadius: BorderRadius.circular(size * .7)),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Opacity(
            opacity: .55,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://classiesounds.com/wp-content/uploads/2017/06/Music-DJ-1200x800-03.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(size * .7)),
            ),
          ),
          Container(
            height: height(size: 63),
            width: width(size: 103),
            margin: EdgeInsets.only(right: right(size: 25)),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'lib/features/home_screens/assets/images/label.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(size * .7)),
          )
        ],
      ),
    );
  }
}
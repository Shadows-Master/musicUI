import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class TopTrendingCard extends StatelessWidget {
  const TopTrendingCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 96),
      width: width(size: 306),
      margin: EdgeInsets.only(right: right(size: 12)),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(size * .7),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 15,
                spreadRadius: 0,
                color: kShadowColor.withOpacity(.08)
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            width: width(size: 103),
            margin: EdgeInsets.only(right: right(size: 12)),
            decoration: BoxDecoration(
                gradient: kPrimaryGradientColor,
                borderRadius: BorderRadius.circular(size * .7)
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: .55,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('https://classiesounds.com/wp-content/uploads/2017/06/Music-DJ-1200x800-03.jpg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(size * .7)
                    ),
                  ),
                ),
                InkWell(
                  child: CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: size * 1.7,
                    child: Icon(Icons.play_arrow, color: kTextColor,),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  right: right(size: 4),
                  top: top(size: 15),
                  bottom: bottom(size: 15)
              ),
              width: width(size: 203),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('If It Ain\'t Me', style: TextStyle(fontSize: fontSize(size: 16), fontWeight: FontWeight.w600),),
                        SvgPicture.asset(
                          'lib/features/home_screens/assets/icons/passion.svg',
                          color: kAccentColor.withOpacity(.5),
                          height: height(size: 15),
                          width: width(size: 15),
                        )
                      ],
                    ),
                  ),
                  Text('Dua Lipa', style: TextStyle(
                      color: kTextColor.withOpacity(.5),
                      fontSize: fontSize(size: 14),
                      height: 1.5,
                      fontWeight: FontWeight.w400),
                  ),
                  Flexible(
                    child: Text('Future Nostalgia (The Moonlight Edition)', style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: fontSize(size: 11),
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

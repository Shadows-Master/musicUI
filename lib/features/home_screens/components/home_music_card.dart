import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class HomeMusicCard extends StatelessWidget {
  const HomeMusicCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: right(size: 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                            image: NetworkImage('https://digitaldefynd.com/wp-content/uploads/2020/02/Best-dj-course-tutorial-class-certification-training-online-scaled.jpg'),
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
              ],
            ),
          ),
          Container(
              width: width(size: 67),
              child: Text(
                'Fear of the water',
                style: TextStyle(
                    fontSize: size*1.3,
                    fontWeight: FontWeight.w500
                ),
              )
          )
        ],
      ),
    );
  }
}

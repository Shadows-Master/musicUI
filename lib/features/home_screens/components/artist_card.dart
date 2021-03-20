import 'package:flutter/material.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(size: 103),
      width: width(size: 105),
      margin: EdgeInsets.only(right: right(size: 12)),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://digitaldefynd.com/wp-content/uploads/2020/02/Best-dj-course-tutorial-class-certification-training-online-scaled.jpg'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(size)
      ),
    );
  }
}

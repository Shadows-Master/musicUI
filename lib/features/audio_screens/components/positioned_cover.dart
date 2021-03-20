import 'package:flutter/material.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class RightCover extends StatelessWidget {
  const RightCover({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top(size: size * 16.5),
      right: -right(size: size * 11.3),
      child: Container(
        height: height(size: 150),
        width: width(size: 155),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://digitaldefynd.com/wp-content/uploads/2020/02/Best-dj-course-tutorial-class-certification-training-online-scaled.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(size * 2.5)),
      ),
    );
  }
}

class LeftCover extends StatelessWidget {
  const LeftCover({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top(size: size * 16.5),
      left: -left(size: size * 11.3),
      child: Container(
        height: height(size: 150),
        width: width(size: 155),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://digitaldefynd.com/wp-content/uploads/2020/02/Best-dj-course-tutorial-class-certification-training-online-scaled.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(size * 2.5)),
      ),
    );
  }
}

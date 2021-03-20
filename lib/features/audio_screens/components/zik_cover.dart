import 'package:flutter/material.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class ZikCover extends StatelessWidget {
  const ZikCover({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top(size: size * 26.4),
      child: Container(
        height: height(size: 198),
        width: width(size: 200),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbluspD-zf1c9lCNQAzyV8Fi5IYtM_l84Zvw&usqp=CAU'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(size * 2.5)),
      ),
    );
  }
}
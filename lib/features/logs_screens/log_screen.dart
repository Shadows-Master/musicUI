import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

import 'components/button_default.dart';

class LogScreen extends StatefulWidget {
  @override
  _LogScreenState createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              ClipPath(
                clipper: SpeakerWaveClipper(),
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight * .65,
                  color: Colors.blue[100],
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: .25,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/features/logs_screens/assets/images/sound.png'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                      Positioned(
                        left: size * 3,
                        right: size * 3,
                        top: size * 7,
                        child: CircleAvatar(
                          radius: size * 8,
                          child: Image.asset(
                              'lib/features/logs_screens/assets/images/headphones.png',
                              height: size * 78,
                              width: size * 78,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: SizeConfig.screenHeight * .27,
                left: left(size: size * 3),
                right: right(size: size * 3),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonDefault(
                        connectOption: 'Handcash',
                        bgColor: Color(0xFFFFFFFF),
                        textColor: kTextColor,
                        icon: 'lib/features/logs_screens/assets/images/Rectangle.svg',
                      ),
                      VerticalSpacing(of: size * 2.5),
                      ButtonDefault(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SpeakerWaveClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height / 2.35);
    var firstControlPoint = new Offset(size.width / 14, size.height /1.5);
    var firstEndPoint = new Offset(size.width / 1.9, size.height / 1.3 - 50);
    var secondControlPoint = new Offset(size.width - (size.width / 18), size.height / 1.3 - 55);
    var secondEndPoint = new Offset(size.width, size.height / 1 - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper)
  {
    return true;
  }
}
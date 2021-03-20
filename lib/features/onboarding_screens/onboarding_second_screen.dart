import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/logs_screens/components/button_default.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class OnboardingSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight * .60,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Opacity(
                      opacity: .9,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/features/onboarding_screens/assets/images/1.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: top(size: 48)),
                child: Column(
                  children: [
                    ConnectGradientBtn(
                      textColor: kPrimaryColor,
                      connectOption: 'Handcash',
                      icon: 'lib/features/logs_screens/assets/images/Vector.svg',
                    ),
                    VerticalSpacing(of: size * 2),
                    ConnectGradientBtn(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

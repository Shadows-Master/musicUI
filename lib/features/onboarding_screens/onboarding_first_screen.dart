import 'package:flutter/material.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/logs_screens/components/button_default.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class OnboardingFirstScreen extends StatelessWidget {
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
                    Padding(
                      padding: EdgeInsets.only(left: left(size: 18)),
                      child: Text('Millions of Songs \nFree on Music',
                        style: TextStyle(
                          fontSize: fontSize(size: 28),
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: top(size: 48)),
                child: Column(
                  children: [
                    ButtonGradient(
                      textColor: kPrimaryColor,
                      btnText: 'Sign up to Free',
                    ),
                    VerticalSpacing(of: size * 2),
                    ButtonGradient(),
                    VerticalSpacing(of: size * .4),
                    Text('Log in',
                      style: TextStyle(
                          fontSize: fontSize(size: 28),
                          fontWeight: FontWeight.w900
                      ),
                    )
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

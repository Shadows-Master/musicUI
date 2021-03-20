import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key key, this.icon = 'lib/features/logs_screens/assets/images/Vector.svg',
    this.isRounded = false,
    this.connectOption, this.bgColor = const Color(0xff0A254B) , this.textColor,
  }) : super(key: key);

  final String icon;
  final String connectOption;
  final Color bgColor;
  final Color textColor;
  final bool isRounded;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width(size: 350),
        height: height(size:  70),
      ),
      child: ElevatedButton(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Connect With', style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: 17)
              ),),
              HorizontalSpacing(of: 12,),
              SvgPicture.asset(icon),
              HorizontalSpacing(of: 12,),
              Text( connectOption ?? 'Moneybutton', style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: 17)
              ),),
            ],
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bgColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size * 3)
            ))
        ),
        onPressed: (){},
      ),
    );
  }
}

class ButtonGradient extends StatelessWidget {
  const ButtonGradient({
    Key key,
    this.connectOption,
    this.textColor, this.btnText,
  }) : super(key: key);

  final String connectOption;
  final String btnText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width(size: 350),
        height: height(size:  70),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: textColor != null ? kGradientWhiteColor : kBtnGradientColor
        ),
        child: ElevatedButton(
          child: Container(
            child: Text( btnText ?? 'Connect With Handcash', style: TextStyle(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: fontSize(size: 19)
            ),),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(textColor!=null ? Colors.white : Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size * .5)
              ))
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}

class ConnectGradientBtn extends StatelessWidget {
  const ConnectGradientBtn({
    Key key, this.icon = 'lib/features/logs_screens/assets/images/Vector.svg',
    this.connectOption, this.bgColor = const Color(0xff0A254B) , this.textColor,
  }) : super(key: key);

  final String icon;
  final String connectOption;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width(size: 350),
        height: height(size:  70),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: textColor != null ? kGradientWhiteColor : kBtnGradientColor,
          borderRadius: BorderRadius.circular(size * .5)
        ),
        child: ElevatedButton(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Connect With', style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize(size: 17)
                ),),
                HorizontalSpacing(of: 12,),
                SvgPicture.asset(icon),
                HorizontalSpacing(of: 12,),
                Text( connectOption ?? 'Moneybutton', style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize(size: 17)
                ),),
              ],
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(textColor!=null ? Colors.white : Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size * .5)
              ))
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
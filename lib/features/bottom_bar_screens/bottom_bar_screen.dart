import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/bottom_bar_screens/data/bottom_item.dart';
import 'package:music/features/home_screens/home_screen.dart';
import 'package:music/features/library_screen/your_library_screen.dart';
import 'package:music/features/more_screen/more_screen.dart';
import 'package:music/features/search_screen/search_screen.dart';
import 'package:music/utils/size_config.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _mIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(), SearchScreen(),
    YourLibraryScreen(), MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _pages.elementAt(_mIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(size * 2),
          topRight: Radius.circular(size * 2),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: kGradientColor
          ),
          child: BottomNavigationBar(
            currentIndex: _mIndex,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (page){
              setState(() {
                _mIndex = page;
              });
            },
            items: itemList.map((item) => BottomNavigationBarItem(
              icon: SvgPicture.asset(item.icon, color: Colors.white, height: size * 2.5, width: size * 2.5,),
              activeIcon: SvgPicture.asset(item.icon, color: Colors.white, height: size * 2.5, width: size * 2.5),
              title:Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(item.title, style: TextStyle(color: Colors.white, fontSize: size*1.2),),
              )
            )).toList(),
          ),
        ),
      )
    );
  }
}

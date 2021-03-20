import 'package:flutter/material.dart';
import 'package:music/features/onboarding_screens/onboarding_second_screen.dart';
import 'package:music/utils/status_bar.dart';
import 'package:music/utils/theme.dart';

void main() {
  init();
  runApp(MusicApp());
}

init(){
  WidgetsFlutterBinding.ensureInitialized();
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    statusBar.setColor(context: context);
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: OnboardingSecondScreen(),
    );
  }
}


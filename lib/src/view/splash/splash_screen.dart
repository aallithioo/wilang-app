import 'package:flutter/material.dart';
import 'package:nyaru/src/app/widgets/border.dart';
import 'package:nyaru/src/app/widgets/sizebox.dart';

import '../../app/routes/route.dart';
import '../../app/themes/font_weight.dart';
import '../../app/themes/size.dart';
import '../../app/themes/color.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/padding.dart';

part './widgets/splash_body.dart';
part './widgets/splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1750), () {
      Navigator.pushReplacementNamed(
        context,
        Routes.intro,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}

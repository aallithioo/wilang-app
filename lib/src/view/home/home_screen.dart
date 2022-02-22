import 'package:flutter/material.dart';
import 'package:nyaru/src/app/enums.dart';
import 'package:nyaru/src/app/widgets/custom_appbar.dart';
import 'package:nyaru/src/app/widgets/custom_bottom_nav_bar.dart';

import '../../app/widgets/padding.dart';

part './widgets/home_body.dart';
part './widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Wilang'),
      body: const HomeBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

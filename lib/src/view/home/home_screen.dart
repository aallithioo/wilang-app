import 'package:flutter/material.dart';

import '../../app/enums.dart';
import '../../app/themes/color.dart';
import '../../app/themes/font_size.dart';
import '../../app/themes/font_weight.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/border.dart';
import '../../app/widgets/custom_appbar.dart';
import '../../app/widgets/custom_bottom_nav_bar.dart';
import '../../app/widgets/divider.dart';
import '../../app/widgets/padding.dart';
import '../../app/widgets/sizebox.dart';

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

import 'package:flutter/material.dart';

import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';

part './widgets/release_notes_body.dart';
part './widgets/release_notes_content.dart';

class ReleaseNotesScreen extends StatelessWidget {
  const ReleaseNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Release Notes'),
      body: const ReleaseNotesBody(),
    );
  }
}

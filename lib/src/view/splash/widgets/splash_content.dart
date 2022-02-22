part of '../splash_screen.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  double _width = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        double _newWidth = SetSize.huge;
        _width = _newWidth;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'nyaru',
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: SetColor.white_900,
            fontSize: SetSize.medium,
            fontWeight: SetFontWeight.bold,
          ),
        ),

        SetSizeBox.verticalTiny,

        // test animation
        Stack(
          children: [
            Container(
              height: SetSize.tiny,
              width: SetSize.huge,
              decoration: BoxDecoration(
                color: SetColor.secondary,
                borderRadius: SetBorder.radiusAllMedium,
              ),
            ),
            AnimatedContainer(
              height: SetSize.tiny,
              width: _width,
              decoration: BoxDecoration(
                color: SetColor.blue_400,
                borderRadius: SetBorder.radiusAllMedium,
              ),
              duration: const Duration(milliseconds: 750),
              curve: Curves.linear,
            ),
          ],
        ),
      ],
    );
  }
}

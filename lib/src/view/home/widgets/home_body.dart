part of '../home_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const SingleChildScrollView(
          child: HomeContent(),
        ),
      ),
    );
  }
}

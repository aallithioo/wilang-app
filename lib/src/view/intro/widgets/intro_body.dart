part of '../intro_screen.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: IntroContent(
        imageURL: 'assets/images/png/img_profile.png',
        title: 'thio alli',
        occupation: 'ordinary random guy',
        message:
            'hi... here i am present my little app\nto you all, hope you enjoy!',
        press: Routes.home,
      ),
    );
  }
}

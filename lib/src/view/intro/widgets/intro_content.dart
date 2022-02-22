part of '../intro_screen.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
    required this.imageURL,
    required this.title,
    required this.occupation,
    required this.message,
    required this.press,
  }) : super(key: key);

  final String title, imageURL, occupation, message, press;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(
          imageURL,
          width: 155,
          height: 155,
        ),
        SetSizeBox.verticalSmall,
        Text(
          title.toUpperCase(),
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: SetColor.accent,
            fontSize: SetFontSize.medium,
            fontWeight: SetFontWeight.bold,
          ),
          textAlign: SetTextAlign.center,
        ),
        Text(
          occupation.toLowerCase(),
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: SetColor.accent,
            fontSize: SetFontSize.small / 1.2,
            fontStyle: SetFontStyle.italic,
          ),
          textAlign: SetTextAlign.center,
        ),
        SetSizeBox.verticalMedium,
        Text(
          message,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: SetColor.accent,
          ),
          textAlign: SetTextAlign.center,
        ),
        const Spacer(),
        Padding(
          padding: SetPadding.onlyBottomMedium,
          child: Padding(
            padding: SetPadding.symetricHorizontalMedium,
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: SetColor.transparent,
                borderRadius: SetBorder.radiusAllTiny,
                border: Border.all(
                  color: SetColor.accent,
                  width: 2,
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    press,
                  );
                },
                child: Text(
                  'Continue'.toUpperCase(),
                  style: kThioAlli.textTheme.headline6!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: SetTextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

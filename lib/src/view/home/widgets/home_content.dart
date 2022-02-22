part of '../home_screen.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

final Map<String, int> _measuresMap = {
  'meters': 0,
  'kilometers': 1,
  'grams': 2,
  'kilograms': 3,
  'feet': 4,
  'miles': 5,
  'pounds (lbs)': 6,
  'ounces': 7,
};

final dynamic _formulas = {
  '0': [1, 0.001, 0, 0, 3.28084, 0.000621371, 0, 0],
  '1': [1000, 1, 0, 0, 3280.84, 0.621371, 0, 0],
  '2': [0, 0, 1, 0.0001, 0, 0, 0.00220462, 0.035274],
  '3': [0, 0, 1000, 1, 0, 0, 2.20462, 35.274],
  '4': [0.3048, 0.0003048, 0, 0, 1, 0.000189394, 0, 0],
  '5': [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
  '6': [0, 0, 453.592, 0.453592, 0, 0, 1, 16],
  '7': [0, 0, 28.3495, 0.0283495, 3.28084, 0, 0.0625, 1],
};
String? _resultMessage;
String? _resultMessageA;
String? _resultMessageB;

class _HomeContentState extends State<HomeContent> {
  double? _numberFrom;
  String? measureFrom;
  String? measureTo;

  @override
  void initState() {
    _numberFrom = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SetSizeBox.verticalMedium,
        Text(
          'Convert :',
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: SetColor.accent,
            fontSize: SetFontSize.small,
          ),
        ),
        SetSizeBox.verticalTiny,
        Container(
          padding: SetPadding.allSmall,
          decoration: BoxDecoration(
            color: SetColor.secondary,
            borderRadius: SetBorder.radiusAllTiny,
            // border: Border.all(
            //   color: SetColor.accent,
            //   width: 1,
            // ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'From : ',
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.accent,
                      fontSize: SetFontSize.small,
                    ),
                  ),
                  DropdownButton(
                    value: measureFrom,
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.grey_400,
                      fontSize: SetFontSize.small,
                      fontWeight: SetFontWeight.light,
                    ),
                    isDense: true,
                    underline: const SizedBox(),
                    borderRadius: SetBorder.radiusAllTiny,
                    dropdownColor: SetColor.secondary,
                    hint: Text(
                      'Measure Type\t',
                      style: kThioAlli.textTheme.bodyText2!.copyWith(
                        color: SetColor.grey_400,
                        fontSize: SetFontSize.small,
                        fontWeight: SetFontWeight.light,
                      ),
                    ),
                    // Encryption type
                    items: <String>[
                      'meters',
                      'kilometers',
                      'grams',
                      'kilograms',
                      'feet',
                      'miles',
                      'pounds (lbs)',
                      'ounces',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: kThioAlli.textTheme.bodyText2!.copyWith(
                            color: SetColor.grey_400,
                            fontSize: SetFontSize.small,
                            fontWeight: SetFontWeight.light,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? measureFrom) {
                      setState(() {
                        this.measureFrom = measureFrom!;
                      });
                    },
                  ),
                ],
              ),
              SetSizeBox.verticalSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'To :',
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.accent,
                      fontSize: SetFontSize.small,
                    ),
                  ),
                  DropdownButton(
                    value: measureTo,
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.grey_400,
                      fontSize: SetFontSize.small,
                      fontWeight: SetFontWeight.light,
                    ),
                    isDense: true,
                    underline: const SizedBox(),
                    borderRadius: SetBorder.radiusAllTiny,
                    dropdownColor: SetColor.secondary,
                    hint: Text(
                      'Measure Type\t',
                      style: kThioAlli.textTheme.bodyText2!.copyWith(
                        color: SetColor.grey_400,
                        fontSize: SetFontSize.small,
                        fontWeight: SetFontWeight.light,
                      ),
                    ),
                    // Encryption type
                    items: <String>[
                      'meters',
                      'kilometers',
                      'grams',
                      'kilograms',
                      'feet',
                      'miles',
                      'pounds (lbs)',
                      'ounces',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: kThioAlli.textTheme.bodyText2!.copyWith(
                            color: SetColor.grey_400,
                            fontSize: SetFontSize.small,
                            fontWeight: SetFontWeight.light,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? measureTo) {
                      setState(() {
                        this.measureTo = measureTo!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SetSizeBox.verticalMedium,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result : ',
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: SetColor.accent,
                fontSize: SetFontSize.small,
              ),
              textAlign: TextAlign.left,
            ),
            SetSizeBox.verticalTiny,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _resultMessage == null
                    ? Container(
                        padding: SetPadding.allSmall,
                        height: 114,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: SetColor.secondary,
                          borderRadius: SetBorder.radiusAllTiny,
                        ),
                        child: Center(
                          child: measureFrom == null && measureTo == null
                              ? Text(
                                  'Please select a measure type',
                                  style:
                                      kThioAlli.textTheme.bodyText1!.copyWith(
                                    color: SetColor.accent.withOpacity(0.3),
                                    fontSize: SetFontSize.small,
                                    fontWeight: SetFontWeight.light,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  'This conversion cannot be performed',
                                  style:
                                      kThioAlli.textTheme.bodyText1!.copyWith(
                                    color: SetColor.accent.withOpacity(0.3),
                                    fontSize: SetFontSize.small,
                                    fontWeight: SetFontWeight.light,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                      )
                    : Container(
                        padding: SetPadding.allSmall,
                        height: 114,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: SetColor.secondary,
                          borderRadius: SetBorder.radiusAllTiny,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _resultMessageA.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: kThioAlli.textTheme.bodyText1!.copyWith(
                                color: SetColor.accent,
                                fontSize: SetFontSize.small,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: SetPadding.symetricVerticalSmall / 1.5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SetDivider.thin,
                                  ),
                                  Padding(
                                    padding: SetPadding.symetricHorizontalSmall,
                                    child: Text(
                                      'equal to',
                                      maxLines: 2,
                                      style: kThioAlli.textTheme.bodyText1!
                                          .copyWith(
                                        color: SetColor.accent.withOpacity(0.3),
                                        fontSize: SetFontSize.small / 1.5,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Expanded(
                                    child: SetDivider.thin,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              _resultMessageB.toString(),
                              maxLines: 2,
                              style: kThioAlli.textTheme.bodyText1!.copyWith(
                                color: SetColor.accent,
                                fontSize: SetFontSize.small,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          ],
        ),
        SetSizeBox.verticalMedium,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Input :',
              style: kThioAlli.textTheme.bodyText1!.copyWith(
                color: SetColor.accent,
                fontSize: SetFontSize.small,
              ),
            ),
            SetSizeBox.verticalTiny,
            TextField(
              onChanged: (text) {
                var rv = double.tryParse(text);
                if (rv != null) {
                  setState(() {
                    _numberFrom = rv;
                  });
                }
              },
              cursorColor: SetColor.blue_400,
              maxLines: 1,
              keyboardType: TextInputType.number,
              maxLength: 128,
              style: kThioAlli.textTheme.bodyText1!.copyWith(
                color: SetColor.accent,
                fontSize: SetFontSize.small,
              ),
              decoration: InputDecoration(
                counter: Container(),
                filled: true,
                fillColor: SetColor.transparent,
                border: OutlineInputBorder(
                  borderRadius: SetBorder.radiusAllTiny,
                  borderSide: const BorderSide(
                    color: SetColor.accent,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: SetBorder.radiusAllTiny,
                  borderSide: const BorderSide(
                    color: SetColor.blue_400,
                    width: 2,
                  ),
                ),
                hintText: 'Value',
                hintStyle: kThioAlli.textTheme.bodyText2!.copyWith(
                  color: SetColor.accent.withOpacity(0.3),
                  fontSize: SetFontSize.small,
                  fontWeight: SetFontWeight.light,
                ),
              ),
            ),
          ],
        ),
        SetSizeBox.verticalMedium,
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: SetColor.primary,
            borderRadius: SetBorder.radiusAllTiny,
            border: Border.all(
              color: SetColor.blue_400,
              width: 1,
            ),
          ),
          child: TextButton(
            onPressed: () {
              if (measureFrom!.isEmpty ||
                  measureTo!.isEmpty ||
                  _numberFrom == 0) {
                return;
              } else {
                convert(_numberFrom!, measureFrom!, measureTo!);
              }
            },
            child: Text(
              'Convert',
              style: kThioAlli.textTheme.button!.copyWith(
                color: SetColor.blue_400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void convert(double value, String from, String to) {
    int? nFrom = _measuresMap[from];
    int? nTo = _measuresMap[to];
    var multiplier = _formulas[nFrom.toString()][nTo];
    var result = value * multiplier;
    if (result == 0) {
      _resultMessage = 'This conversion cannot be performed';
    } else {
      _resultMessageA = '$_numberFrom $measureFrom';
      _resultMessageB = '$result $measureTo';
      _resultMessage =
          '${_numberFrom.toString()} $measureFrom\n${result.toString()} $measureTo';
    }
    setState(() {
      _resultMessage = _resultMessage;
    });
  }
}

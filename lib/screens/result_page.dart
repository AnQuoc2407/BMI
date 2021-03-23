import 'package:fl_bmi_calculator/components/bottom_button.dart';
import 'package:fl_bmi_calculator/components/reusable_card.dart';

import 'package:fl_bmi_calculator/constants.dart';
import 'package:fl_bmi_calculator/screens/result_page_arguments.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  // ResultPage({
  //   @required this.bmiResult,
  //   @required this.resultText,
  //   @required this.interpretation
  // });
  //
  // final String bmiResult;
  // final String resultText;
  // final String interpretation;

  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {

    final ResultPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    args.interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextSyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}

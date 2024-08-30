import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';


class ResultsPage extends StatelessWidget {

  final String bmiResult, resultText, interpretation;

  ResultsPage({ required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              bgNewColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range:',
                        style: kBodyNormalBMIText,
                      ),
                      Text(
                        '18.5 - 25 kg/m²',
                      style: kBodyTextStyle,
                      )
                    ],
                  ),

                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),

                ],
              ),
            ),
          ),
          BottomButton(label: 'RE-CALCULATE',
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

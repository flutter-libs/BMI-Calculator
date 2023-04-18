import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/bottom_button.dart';


class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40.0, left: 10.0),
              child: Text(
                'Your Result',
                style: resultsTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal', style: greenTextStyle,),
                  Text('18.3', style: numberLargeTextStyle,),
                  Text('You body mass index is quite low, you should eat more!', textAlign: TextAlign.center, style: resultsDescriptionTextStyle,),
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {Navigator.pop(context);}, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}

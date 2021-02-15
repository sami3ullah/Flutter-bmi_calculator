import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import '../components/FrostedGlassCard.dart';
import '../components/bottomButton.dart';

class ResultScreen extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String interpretation;

  ResultScreen(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background2.jpg',
            fit: BoxFit.fill,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    title: Text("Your Results"),
                    backgroundColor: Colors.white.withOpacity(0),
                    elevation: 1.0,
                  ),
                ),
                FrostedGlassCard(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: kResultText,
                        ),
                        Text(
                          bmiResult,
                          style: kBMIText,
                        ),
                        Text(
                          interpretation,
                          style: kBodyText,
                        ),
                      ],
                    ),
                  ),
                ),
                BottomButton(
                  onTapFunction: () {
                    Navigator.pop(context);
                  },
                  buttonText: "Calculate Again",
                  height: 100.0,
                ),
              ]),
        ],
      ),
    );
  }
}

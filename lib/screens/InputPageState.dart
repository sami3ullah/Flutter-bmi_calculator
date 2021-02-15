import 'dart:ui';
import 'package:bmi_calculator/CalculateBMI.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/FrostedGlassCard.dart';
import 'package:bmi_calculator/screens/ResultScreen.dart';
import 'package:bmi_calculator/components/ReuseableColumnCard.dart';
import 'package:bmi_calculator/components/SliderGradientClass.dart';
import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/RawCircularButton.dart';

//Enums
enum Gender { female, male }

class InputPageState extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPageState> {
  //variable to keep track of male or female button
  Gender selectGender;
  int height = 150;
  int weight = 30;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/background2.jpg",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    FrostedGlassCard(
                      paddingTop: 10.0,
                      paddingRight: 5.0,
                      paddingBottom: 5.0,
                      paddingLeft: 10.0,
                      borderRadius: 15.0,
                      onPress: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      cardColor: selectGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: ReuseableColumn(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                    FrostedGlassCard(
                      paddingTop: 10.0,
                      paddingRight: 10.0,
                      paddingBottom: 5.0,
                      paddingLeft: 5.0,
                      onPress: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      cardColor: selectGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      borderRadius: 15.0,
                      child: ReuseableColumn(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ],
                ),
                FrostedGlassCard(
                  paddingTop: 5.0,
                  paddingRight: 10.0,
                  paddingBottom: 5.0,
                  paddingLeft: 10.0,
                  borderRadius: 15.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: kTextLabel,
                      ),
                      SizedBox(height: kSizedBoxHeight),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kHeadingText,
                          ),
                          Text(
                            "cm",
                            style: kTextLabel,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          thumbColor: kBottomButtonColor.withOpacity(0.7),
                          trackShape: GradientRectSliderTrackShape(
                              gradient: kBackgroundGradient,
                              darkenInactive: true),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 16.0),
                          overlayColor: kBottomButtonColor.withOpacity(0.2),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 0.0,
                          max: 300.0,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    FrostedGlassCard(
                      paddingTop: 5.0,
                      paddingRight: 5.0,
                      paddingBottom: 10.0,
                      paddingLeft: 10.0,
                      borderRadius: 15.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: kTextLabel,
                            ),
                            SizedBox(height: kSizedBoxHeight),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: kHeadingText,
                                ),
                                Text(
                                  "kg",
                                  style: kTextLabel,
                                ),
                              ],
                            ),
                            SizedBox(height: kSizedBoxHeight),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawCircularButton(
                                  gradient: kBackgroundGradient2,
                                  child: Icon(FontAwesomeIcons.plus),
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                RawCircularButton(
                                  gradient: kBackgroundGradient2,
                                  child: Icon(FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  },
                                ),
                              ],
                            )
                          ]),
                    ),
                    FrostedGlassCard(
                      paddingTop: 5.0,
                      paddingRight: 10.0,
                      paddingBottom: 10.0,
                      paddingLeft: 5.0,
                      borderRadius: 15.0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kTextLabel,
                            ),
                            SizedBox(height: kSizedBoxHeight),
                            Text(
                              age.toString(),
                              style: kHeadingText,
                            ),
                            SizedBox(height: kSizedBoxHeight),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawCircularButton(
                                  gradient: kBackgroundGradient2,
                                  child: Icon(FontAwesomeIcons.plus),
                                  onPressed: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                RawCircularButton(
                                  gradient: kBackgroundGradient2,
                                  child: Icon(FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  },
                                ),
                              ],
                            )
                          ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: BottomButton(
                            onTapFunction: () {
                              // calculating BMI
                              CalculateBrain calc = CalculateBrain(
                                  height: height, weight: weight);
                              // pushing the results into next screen and using navigator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                    bmiResult: calc.calculateBMI(),
                                    resultText: calc.getResultText(),
                                    interpretation: calc.getInterpretation(),
                                  ),
                                ),
                              );
                            },
                            buttonText: "Calculate",
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

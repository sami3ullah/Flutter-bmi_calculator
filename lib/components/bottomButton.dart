import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTapFunction;
  final String buttonText;
  final double height;

  BottomButton({this.onTapFunction, this.buttonText, this.height = 80.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        decoration: BoxDecoration(color: kBottomButtonColor.withOpacity(0.65)),
        height: height,
        child: Center(
          child: Text(
            buttonText,
            style: kTextMedium,
          ),
        ),
      ),
    );
  }
}

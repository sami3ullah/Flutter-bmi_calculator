import 'dart:ui';
import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class FrostedGlassCard extends StatelessWidget {
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final double paddingLeft;
  final double borderRadius;
  final double cardWidth;
  final double cardHeight;
  final Color cardColor;
  final Widget child;
  final Function onPress;

  //constructor
  FrostedGlassCard(
      {this.paddingTop = 0.0,
      this.paddingRight = 0.0,
      this.paddingBottom = 0.0,
      this.paddingLeft = 0.0,
      this.borderRadius = 0.0,
      this.cardWidth = 2,
      this.cardHeight = 3.5,
      this.cardColor = kInactiveCardColor,
      this.onPress,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Padding(
          padding: EdgeInsets.only(
              top: paddingTop,
              left: paddingLeft,
              right: paddingRight,
              bottom: paddingBottom),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                  height: MediaQuery.of(context).size.height / cardHeight,
                  width: MediaQuery.of(context).size.width / cardWidth,
                  color: cardColor,
                  child: child),
            ),
          ),
        ),
      ),
    );
  }
}

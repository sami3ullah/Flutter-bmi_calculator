import 'package:flutter/material.dart';

class RawCircularButton extends StatelessWidget {
  final Gradient gradient;
  final Widget child;
  final Function onPressed;

  RawCircularButton(
      {this.gradient, @required this.child, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        height: 55.0,
        width: 55.0,
        decoration: BoxDecoration(gradient: gradient),
        child: RawMaterialButton(
          onPressed: onPressed,
          shape: CircleBorder(),
          child: child,
        ),
      ),
    );
  }
}

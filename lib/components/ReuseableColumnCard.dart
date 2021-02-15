import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class ReuseableColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  ReuseableColumn({this.icon, this.label = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(height: kSizedBoxHeight),
        Text(
          label,
          style: kTextLabel,
        )
      ],
    );
  }
}

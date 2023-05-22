import 'package:bmi_calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconData;
  const IconContent({super.key, required this.label, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(label.toUpperCase(), style: kTextLabelTheme)
      ],
    );
  }
}

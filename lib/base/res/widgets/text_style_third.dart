import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.textLocation, this.isColor});
  final String textLocation;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textLocation,
      style: isColor == null
          ? AppStyles.headLineStyle3.copyWith(
              color: Colors.white,
            )
          : AppStyles.headLineStyle3,
    );
  }
}

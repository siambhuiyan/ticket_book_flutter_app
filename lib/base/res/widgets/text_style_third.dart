import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.textLocation});
  final String textLocation;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textLocation,
      style: AppStyles.headLineStyle3.copyWith(
        color: Colors.white,
      ),
    );
  }
}

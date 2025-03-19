import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_style_four.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleFour(textLocation: topText),
        SizedBox(height: 5,),
        TextStyleFour(textLocation: bottomText),
      ],
    );
  }
}

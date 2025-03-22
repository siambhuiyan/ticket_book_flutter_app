import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_style_four.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment, this.isColor});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(textLocation: topText,isColor: isColor,),
        SizedBox(height: 5,),
        TextStyleFour(textLocation: bottomText,isColor: isColor,),
      ],
    );
  }
}

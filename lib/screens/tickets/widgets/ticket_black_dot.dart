

import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketBlackDot extends StatelessWidget {
  final bool? pos;
  const TicketBlackDot({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos==true?27:null,
      right : pos==true?null:27,

      top:276.5,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,border: Border.all(width: 2,color: AppStyles.textColor),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}

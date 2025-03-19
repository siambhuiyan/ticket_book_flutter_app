import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final VoidCallback func;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20,),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText,style: AppStyles.headLineStyle2,),
          InkWell(
            onTap: func,
            child: Text(smallText,style: AppStyles.textStyle.copyWith(color: AppStyles.primary),),
          )
        ],
      ),
    );
  }
}

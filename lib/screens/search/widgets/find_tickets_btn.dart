import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTicketsBtn extends StatelessWidget {
  const FindTicketsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 40,),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFF2E63),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        child: Text(
          'find tickets',
          style: AppStyles.textStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

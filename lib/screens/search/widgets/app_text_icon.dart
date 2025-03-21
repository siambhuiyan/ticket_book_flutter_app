import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String boxHintText;
  const AppTextIcon({super.key, required this.icon, required this.boxHintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon,size: 35, color: Color(0xffE4DCCF),),
          SizedBox(width: 12,),
          Text(boxHintText, style: TextStyle(fontSize: 18,color: Color(0xff7D7C7C)),),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key, required this.hotel, this.wholeScreen = false});
  final Map<String,dynamic>hotel;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right:  wholeScreen==true?0:16),
      padding: EdgeInsets.all(8),
      width: 300,
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primary, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            height: 180,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${hotel['image']}',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,),
            child: Text(
              hotel['place'].toUpperCase(),
              style: AppStyles.headLineStyle2.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16,),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16,),
            child: Text(
              '\$${hotel['price'].toString()}/night',
              style: AppStyles.headLineStyle2.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

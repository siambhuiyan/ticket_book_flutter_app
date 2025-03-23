import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/utils/app_json.dart';

import 'hotels.dart';

class AllHotelsGrid extends StatelessWidget {
  const AllHotelsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEEEDEB),
        centerTitle: true,
        title: Text(
          'All Hotels',
          style: AppStyles.headLineStyle1,
        ),
      ),
      backgroundColor: Color(0xffEEEDEB),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio:.7,
            ),
            itemCount: hotelsList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelsList[index];
              return HotelGrid(hotel: singleHotel,index:index);
            },
          ),
        ),
      ),
    );
  }
}

class HotelGrid extends StatelessWidget {
  const HotelGrid({
    super.key,
    required this.hotel, required this.index,
  });
  final Map<String, dynamic> hotel;
  final int index ;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetails,arguments: {
          'index':index,
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(8),
        // width: 300,
        height: 350,
        decoration: BoxDecoration(
            color: AppStyles.primary, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
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
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                hotel['place'].toUpperCase(),
                style: AppStyles.headLineStyle3.copyWith(
                  color: Colors.white,
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    hotel['destination'],
                    style: AppStyles.headLineStyle4.copyWith(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    '\$${hotel['price'].toString()}/night',
                    style: AppStyles.headLineStyle4.copyWith(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

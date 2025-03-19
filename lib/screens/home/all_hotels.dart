import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/utils/app_json.dart';
import 'package:ticket_app/screens/home/widgets/hotels.dart';


class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All Hotels',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black54,
          ),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelsList
                  .map((ele) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Hotels(hotel: ele,wholeScreen: true,)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

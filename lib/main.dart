import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/home/widgets/all_hotels_grid.dart';
import 'package:ticket_app/screens/home/widgets/hotels_details.dart';
import 'package:ticket_app/screens/tickets/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home : (context)=>const BottomNavBar(),
        AppRoutes.allTickets:(context)=>const AllTickets(),
        AppRoutes.allHotels : (context)=>const AllHotels(),
        AppRoutes.ticketScreen: (context)=>const TicketScreen(),
        AppRoutes.allHotelsGridView: (context)=>const AllHotelsGrid(),
        AppRoutes.hotelDetails : (context)=>const HotelsDetails(),
      },
    );
  }
}

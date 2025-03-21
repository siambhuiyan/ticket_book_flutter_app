import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets_btn.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: AppStyles.bgColor,
      backgroundColor: Color(0xffEEEDEB),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headLineStyle1.copyWith(
              fontSize: 40,
              color: Color(0xFF5C4D4D),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //ticket tabs
          AppTicketTabs(),
          SizedBox(
            height: 20,
          ),
          AppTextIcon(
              icon: Icons.flight_takeoff_rounded, boxHintText: 'Departure'),
          SizedBox(
            height: 20,
          ),
          AppTextIcon(icon: Icons.flight_land_rounded, boxHintText: 'Arrival'),
          SizedBox(
            height: 20,
          ),
          FindTicketsBtn(),
          SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(
              context,
              AppRoutes.allTickets,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TicketPromotion(),

        ],
      ),
    );
  }
}

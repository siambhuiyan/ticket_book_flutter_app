import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_double_text.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            // color: Colors.blue,
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headLineStyle3,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4f6fd),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                        size: 30,
                      ),
                      Text('Search',style: TextStyle(fontSize: 16,color: Colors.grey,),),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                AppDoubleText(bigText: 'Upcoming flights', smallText: 'View all'),
                SizedBox(height: 20,),
                TicketView(),
              ],

            ),
          ),

        ],
      ),
    );
  }
}

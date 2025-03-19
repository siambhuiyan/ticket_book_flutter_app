import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/res/widgets/applayout_builder.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';
import 'package:ticket_app/base/res/widgets/text_style_four.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

import 'big_circle.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket,this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .85,
      height: 220,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              // color: Colors.greenAccent,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //show departure and destination with icon the first line
                  Row(
                    children: [
                      TextStyleThird(textLocation: ticket['from']['code']),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: ApplayoutBuilder(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(textLocation: ticket['to']['code']),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  //Show departure and destination with time the second line
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFour(textLocation: ticket['from']['name']),
                      ),
                      Expanded(child: Container()),
                      TextStyleFour(textLocation: ticket['flying_time']),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,

                        child: TextStyleFour(textLocation: ticket['to']['name'],align: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circle design in the ticket
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(child: ApplayoutBuilder(randomDivider: 15,width: 6,),),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              // color: Colors.greenAccent,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //show departure and destination with icon the first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(topText: ticket['date'], bottomText: 'DATE', alignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(topText: ticket['departure_time'], bottomText: 'Departure Time', alignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(topText: ticket['number'].toString(), bottomText: 'NUMBER', alignment: CrossAxisAlignment.end),
                    ],
                  ),
                  //Show departure and destination with time the second line
                  // Row(
                  //   children: [
                  //     Text(
                  //       'Date',
                  //       style: AppStyles.headLineStyle4.copyWith(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       'Departure time',
                  //       style: AppStyles.headLineStyle4.copyWith(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       'Number',
                  //       style: AppStyles.headLineStyle4.copyWith(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

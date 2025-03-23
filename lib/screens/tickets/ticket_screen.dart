import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/utils/app_json.dart';
import 'package:ticket_app/base/res/widgets/applayout_builder.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/tickets/widgets/ticket_black_dot.dart';

import '../../base/res/widgets/app_column_text_layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

late int ticketIndex = 0;

class _TicketScreenState extends State<TicketScreen> {
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args['index'];
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEEEDEB),
        title: Text(
          'Ticket',
          style: AppStyles.headLineStyle1,
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xffEEEDEB),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // Text(
              //   'Tickets',
              //
              // ),
              SizedBox(
                height: 20,
              ),
              AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: 'Siam Bhuiyan',
                          bottomText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: '5333 34256',
                          bottomText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ApplayoutBuilder(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: '243536478442',
                          bottomText: 'Number Of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: 'B46859',
                          bottomText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ApplayoutBuilder(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaL,
                                  scale: 6,
                                ),
                                Text(
                                  '*** 2462',
                                  style: AppStyles.headLineStyle3,
                                ),
                              ],
                            ),
                            // SizedBox(height: 5,),
                            Text(
                              'Payment Method',
                              style: AppStyles.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        AppColumnTextLayout(
                          topText: '\$248.99',
                          bottomText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              //bottom ticket details with qr code
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    )),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        data: 'www.youtube.com',
                        barcode: Barcode.code128(),
                        height: 70,
                        drawText: false,
                        color: AppStyles.textColor,
                        width: double.infinity,
                      )),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              //colorful ticket
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
          TicketBlackDot(
            pos: true,
          ),
          TicketBlackDot(
            pos: null,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/routes/app_routes.dart';
import 'package:ticket_app/base/res/utils/app_json.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Tickets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: ticketList
                  .map((ele) => GestureDetector(
                onTap: (){
                  var index = ticketList.indexOf(ele);
                  Navigator.pushNamed(context, AppRoutes.ticketScreen,arguments: {
                    'index':index,
                  });
                },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: ele,wholeScreen: true,)),
                  ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

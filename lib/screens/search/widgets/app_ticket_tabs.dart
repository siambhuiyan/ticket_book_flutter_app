import 'package:flutter/material.dart';

import 'option_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String  secondTab;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xfff4f5fd)),
      child: Row(
        children: [
          OptionTabs(
            tabText: firstTab,
            isRight: false,
            tabColor: false,
          ),
          OptionTabs(tabText: secondTab),
        ],
      ),
    );
  }
  }
  //''
//


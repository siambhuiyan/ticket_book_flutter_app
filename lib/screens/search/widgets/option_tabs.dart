import 'package:flutter/material.dart';
class OptionTabs extends StatelessWidget {
  const OptionTabs({
    super.key,
    required this.tabText,
    this.isRight = true,
    this.tabColor = true,
  });

  final String tabText;
  final bool isRight;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: size.width * .44,
      decoration: BoxDecoration(
        borderRadius: isRight == true
            ? BorderRadius.horizontal(
          right: Radius.circular(50),
        )
            : BorderRadius.horizontal(
          left: Radius.circular(50),
        ),
        color: tabColor == true ? Color(0xfff4f5fd) : Color(0xffF3C5C5),
      ),
      child: Center(
        child: Text(tabText),
      ),
    );
  }
}

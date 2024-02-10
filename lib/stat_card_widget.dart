import 'package:flutter/material.dart';

class StatCardWidget extends StatelessWidget {
  final num statCount;
  final String title;
  const StatCardWidget(
      {super.key, required this.statCount, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xFFAFAFAF),
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statCount.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Text(title),
        ],
      ),
    );
  }
}

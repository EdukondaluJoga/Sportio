import 'package:flutter/material.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/appStyle.dart';
import 'package:sportio/screens/resuableText.dart';

class AvailableBookingsScreen extends StatelessWidget {
  const AvailableBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "AvailableCourts",
            style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("Available Courts"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/appStyle.dart';
import 'package:sportio/screens/resuableText.dart';

class AllBookingsScreen extends StatelessWidget {
  const AllBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "AllBookings", style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Bookings"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/appbar.dart';
import 'package:sportio/screens/customContainer.dart';
import 'package:sportio/screens/dashboard/mybookings.dart';
import 'package:sportio/screens/dashboard/widgets/availablebooking_screen.dart';
import 'package:sportio/screens/dashboard/widgets/booking_lists.dart';
import 'package:sportio/screens/dashboard/widgets/createBooking.dart';
import 'package:sportio/screens/heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(
            containerContent: Column(
          children: [
            Heading(
              text: "MY Bookings",
              onTap: () {
                Get.to(() => const MyBookingsScreen(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const MyBookings(),
            SizedBox(
              width: 100,
              height: 20,
            ),
            Heading(
              text: "Available Courts",
              onTap: () {
                Get.to(() => const AvailableBookingsScreen(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const MyBookings(),
            SizedBox(
              width: 100,
              height: 50,
            ),
            const CreateBooking(title: "create Booking"),
          ],
        )),
      ),
    );
  }
}

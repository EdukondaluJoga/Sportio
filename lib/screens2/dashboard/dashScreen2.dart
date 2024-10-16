import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/customContainer.dart';
import 'package:sportio/screens/dashboard/mybookings.dart';
import 'package:sportio/screens/dashboard/widgets/createBooking.dart';
import 'package:sportio/screens/heading.dart';
import 'package:sportio/screens2/appbar.dart';
import 'package:sportio/screens2/dashboard/widgets/booking_lists.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: CustomAppBar2()),
      body: SafeArea(
        child: CustomContainer(
            containerContent: Column(
          children: [
            Heading(
              text: "All Bookings",
              onTap: () {
                Get.to(() => const MyBookingsScreen(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const AllBookings(),
            SizedBox(
              width: 100,
              height: 90,
            ),
            const CreateBooking(title: "create new Court"),
          ],
        )),
      ),
    );
  }
}

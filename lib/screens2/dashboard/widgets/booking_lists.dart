import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportio/constants/uidata.dart';
import 'package:sportio/screens2/dashboard/widgets/booking_widget.dart';

class AllBookings extends StatelessWidget {
  const AllBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(bookings.length, (i) {
          var booking = bookings[i];
          return BookingWidget2(
            title: booking['title'],
            sportname: booking['sportname'],
            courtNo: booking['courtNo'],
            time: booking['time'],
            date: booking['date'],
            userBooked: booking['userBooked'],
          );
        }),
      ),
    );
  }
}

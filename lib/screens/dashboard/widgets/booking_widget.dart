import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/appStyle.dart';
import 'package:sportio/screens/resuableText.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({
    super.key,
    required this.title,
    required this.sportname,
    required this.courtNo,
    required this.userBooked,
    required this.date,
    required this.time,
    this.onTap,
  });

  final String title;
  final String sportname;
  final String courtNo;
  final String userBooked;
  final String date;
  final String time;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * .75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: Column(
            children: [
              // Title centered with a bigger font size
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: ReusableText(
                    text: title,
                    style: appStyle(18, kDark, FontWeight.bold), // Bigger title
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              // Left-aligned information
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: 'Sport: $sportname',
                      style: appStyle(12, kGray, FontWeight.w500),
                    ),
                    ReusableText(
                      text: 'Court No: $courtNo',
                      style: appStyle(12, kGray, FontWeight.w500),
                    ),
                    ReusableText(
                      text: 'User: $userBooked',
                      style: appStyle(12, kGray, FontWeight.w500),
                    ),
                    ReusableText(
                      text: 'Date: $date',
                      style: appStyle(12, kGray, FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: 'Timings',
                          style: appStyle(12, kGray, FontWeight.w500),
                        ),
                        ReusableText(
                          text: time,
                          style: appStyle(12, kDark, FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

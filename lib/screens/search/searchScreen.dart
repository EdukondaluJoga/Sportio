import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportio/constants/constants.dart';
import 'package:sportio/screens/customContainer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: Container(
            height: 80,
          )),
      body: SafeArea(
        child: CustomContainer(containerContent: Container()),
      ),
    );
  }
}

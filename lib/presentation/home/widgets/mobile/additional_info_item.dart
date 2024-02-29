import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/widgets/custom_text.dart';

class AdditionalInformationItem extends StatelessWidget {
  final IconData? icon;
  final String? lable;
  final String? value;

  const AdditionalInformationItem({
    super.key,
    this.icon,
    this.lable,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
        5.verticalSpace,
        CustomText(
          title: lable,
          fontSize: size.width > 768 ? 10.sp : 14.sp,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
        CustomText(
          title: value,
          fontSize: size.width > 768 ? 10.sp : 14.sp,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
      ],
    );
  }
}

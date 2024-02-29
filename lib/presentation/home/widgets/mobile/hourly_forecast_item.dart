import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/widgets/custom_text.dart';

class HourlyForecastItem extends StatelessWidget {
  final String? temp;
  final IconData? skyType;
  final String? time;
 

  const HourlyForecastItem({
    super.key,
    this.temp,
    this.skyType,
    this.time,
   
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: 120,
      padding: const EdgeInsets.all(4.0),
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 0.7),
        color: Colors.black12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            title: '$temp°C',
            fontSize: size.width > 1000
                ? 12.sp
                : size.width > 768
                    ? 16.sp
                    : 20.sp,
            textAlign: TextAlign.center,
            color: Colors.white,
          ),
          Icon(
            skyType,
            size: 35,
            color: Colors.white,
          ),
          5.verticalSpace,
          CustomText(
            title: time,
            fontSize: size.width > 768 ? 14 : 16.sp,
            textAlign: TextAlign.center,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

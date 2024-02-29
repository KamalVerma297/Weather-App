import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/presentation/home/weather_screen_mobile_layout.dart';
import 'package:weather_app/presentation/home/weather_screen_web_layout.dart';
import 'package:weather_app/presentation/responsive/responsive_layout.dart';
import 'package:weather_app/widgets/custom_scaffold.dart';
import 'package:weather_app/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return CustomScaffold(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              const Spacer(),
              Image.asset("assets/images/splash_image.png", height: size.height / 2),
              const Spacer(),
              Center(
                child: CustomText(
                  title: 'Weather',
                  color: Colors.white,
                  fontSize: size.width > 768 ? 20.sp : 48.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: CustomText(
                  title: 'ForeCasts',
                  color: Colors.yellow.shade700,
                  fontSize: size.width > 768 ? 20.sp : 48.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResponsiveLayout(
                        mobileScreenLayout: WeatherScreenMobileLayout(),
                        webScreenLayout: WeatherScreenWebLayout(),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: size.width * 0.4,
                  height: size.width > 768 ? size.height * 0.1 : 55 ,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDDB130),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: CustomText(
                    title: "Get Started",
                    fontSize: size.width > 768 ? 12.sp : 18.sp,
                    textAlign: TextAlign.center,
                    color: const Color(0xFF362A84),
                  ),
                ),
              ),
              const Spacer(),
            ],
          );
        },
      ),
    );
  }
}

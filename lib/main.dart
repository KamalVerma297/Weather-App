import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/locator.dart';
import 'package:weather_app/presentation/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/splash/splash_screen.dart';
import 'package:weather_app/weather_app_bloc_observer.dart';

void main() {
  Bloc.observer = WeatherAppBlocObserver();

  setUpLocator();

  ErrorWidget.builder = (details) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Image.asset(
          'assets/images/oops.webp',
          height: 250,
        ),
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => SplashCubit()),
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Weather App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Color(0xFF1c2547),
                centerTitle: true,
                titleTextStyle: TextStyle(color: Colors.white),
                elevation: 0,
              ),
              fontFamily: 'Lato',
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}

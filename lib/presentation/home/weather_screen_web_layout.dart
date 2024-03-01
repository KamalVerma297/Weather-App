import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/presentation/home/bloc/home_bloc.dart';
import 'package:weather_app/presentation/home/widgets/additional_info_item.dart';
import 'package:weather_app/presentation/home/widgets/hourly_forecast_item.dart';
import 'package:weather_app/widgets/custom_scaffold.dart';
import 'package:weather_app/widgets/custom_text.dart';
import 'package:weather_app/widgets/progress_loader.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherScreenWebLayout extends StatefulWidget {
  const WeatherScreenWebLayout({super.key});

  @override
  State<WeatherScreenWebLayout> createState() => _WeatherScreenWebLayoutState();
}

class _WeatherScreenWebLayoutState extends State<WeatherScreenWebLayout> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.fetchWeatherDataEvent("Delhi"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return CustomScaffold(
      appBar: AppBar(
        title: const Text("Delhi, India"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(const HomeEvent.fetchWeatherDataEvent("Delhi"));
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(
              child: ProgressLoader(),
            ),
            success: (weatherResponse) {
              final time = DateTime.parse(weatherResponse!.list![0].time!);

              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView(
                    children: [
                      Container(
                        width: double.infinity,
                        height: size.height / 4,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 0.7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  title: DateFormat.MMMEd().format(time),
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  title: DateFormat.Hm().format(time),
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            CustomText(
                              title: '${getWeatherInCalcius(weatherResponse.list![0].main!.temp!).toStringAsFixed(0)}°C',
                              fontSize: 26.sp,
                              color: Colors.white,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  getWeatherIcon(weatherResponse.list![0].weather![0].main),
                                  size: 50,
                                  color: Colors.white,
                                ),
                                10.verticalSpace,
                                CustomText(
                                  title: '${weatherResponse.list![0].weather![0].main}',
                                  fontSize: 12.sp,
                                  textAlign: TextAlign.center,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      5.verticalSpace,
                      CustomText(
                        title: "Hourly Forecast",
                        color: Colors.white,
                        fontSize: size.width > 1000 ? 12.sp : 14.sp,
                      ),
                      SizedBox(
                        height: size.width > 1000 ? size.height * 0.25 : size.height * 0.23,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            final time = DateTime.parse(weatherResponse.list![index + 1].time!);

                            return HourlyForecastItem(
                              temp: getWeatherInCalcius(weatherResponse.list![index + 1].main!.temp!).toStringAsFixed(0),
                              skyType: getWeatherIcon(weatherResponse.list![index + 1].weather![0].main),
                              time: DateFormat.j().format(time),
                            );
                          },
                        ),
                      ),
                      CustomText(
                        title: "Additional Information",
                        color: Colors.white,
                        fontSize: size.width > 1000 ? 12.sp : 14.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AdditionalInformationItem(
                            icon: Icons.water_drop,
                            lable: "Humdity",
                            value: weatherResponse.list![0].main!.humidity.toString(),
                          ),
                          AdditionalInformationItem(
                            icon: Icons.air,
                            lable: "Wind Speed",
                            value: weatherResponse.list![0].wind!.speed.toString(),
                          ),
                          AdditionalInformationItem(
                            icon: Icons.beach_access,
                            lable: "Pressure",
                            value: weatherResponse.list![0].main!.pressure.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            failure: (errorMessage) {
              return Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image.asset(
                  'assets/images/oops.webp',
                  height: 250,
                ),
              );
            },
          );
        },
      ),
    );
  }

  double getWeatherInCalcius(double kalvin) {
    return kalvin - 273.15;
  }
}

IconData getWeatherIcon(String? skyType) {
  if (skyType == "Haze") {
    return WeatherIcons.day_haze;
  } else if (skyType == "Clouds") {
    return WeatherIcons.cloud;
  } else if (skyType == "Rain") {
    return WeatherIcons.rain;
  } else {
    return WeatherIcons.day_sunny;
  }
}

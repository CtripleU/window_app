import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_app/constants.dart';
import 'package:window_app/global_bloc.dart';
import 'package:window_app/pages/add_medication/add_medication_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalBloc? globalBloc;

  @override
  void initState() {
    globalBloc = GlobalBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<GlobalBloc>.value(
      value: globalBloc!,
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Pill Reminder',
          theme: ThemeData.dark().copyWith(
            primaryColor: colorOne,
            scaffoldBackgroundColor: colorTwo,
            appBarTheme: AppBarTheme(
              toolbarHeight: 7.h,
              backgroundColor: colorTwo,
              elevation: 0,
              iconTheme: IconThemeData(
                color: colorThree,
                size: 20.sp,
              ),
              titleTextStyle: GoogleFonts.mulish(
                color: colorSeven,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                fontSize: 16.sp,
              ),
            ),
            textTheme: TextTheme(
              headline3: TextStyle(
                fontSize: 28.sp,
                color: colorThree,
                fontWeight: FontWeight.w500,
              ),
              headline4: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
                color: colorSeven,
              ),
              headline5: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: colorSeven,
              ),
              headline6: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: colorSeven,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
              subtitle1: GoogleFonts.poppins(fontSize: 15.sp, color: colorOne),
              subtitle2: GoogleFonts.poppins(fontSize: 12.sp, color: colorSix),
              caption: GoogleFonts.poppins(
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: colorSix,
              ),
              labelMedium: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: colorSeven,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorSix,
                  width: 0.7,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: colorSix),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colorOne),
              ),
            ),
            timePickerTheme: TimePickerThemeData(
              backgroundColor: colorTwo,
              hourMinuteColor: colorSeven,
              hourMinuteTextColor: colorTwo,
              dayPeriodColor: colorSeven,
              dayPeriodTextColor: colorTwo,
              dialBackgroundColor: colorSeven,
              dialHandColor: colorOne,
              dialTextColor: colorTwo,
              entryModeIconColor: colorFour,
              dayPeriodTextStyle: GoogleFonts.aBeeZee(
                fontSize: 8.sp,
              ),
            ),
          ),
          home: const HomePage(),
        );
      }),
    );
  }
}

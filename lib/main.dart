import 'package:bmi_calculator_app/bmi_calculator.dart';
import 'package:bmi_calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 34, 38, 73),
        useMaterial3: true,
        iconTheme: const IconThemeData(size: 60),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 215, 94, 86),
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: kAppBarTextTheme,
          backgroundColor: kAppBarBackgroundColor,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      title: 'Material App',
      home: const BMIPage(),
    );
  }
}

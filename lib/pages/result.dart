import 'package:bmi_calculator_app/bmi_calculator.dart';
import 'package:bmi_calculator_app/constants/constants.dart';
import 'package:bmi_calculator_app/custom_widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? indicator;
  final String? bmi;
  final String? feedback;
  final Gender? gender;
  final int? age;
  const ResultPage(
      {super.key,
      required this.age,
      required this.indicator,
      required this.bmi,
      required this.feedback,
      required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Result'),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: CustomCard(
                      contents: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                gender == Gender.male ? 'Male' : 'Female',
                                style: kTextLabelTheme,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$age',
                                style: kTextLabelTheme,
                              )
                            ],
                          ),
                          Text(
                            indicator!.toUpperCase(),
                            style: kResultTextTheme,
                          ),
                          Text(
                            '$bmi',
                            style: kBMITextTheme,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              feedback!,
                              style: kTextLabelTheme,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      cardColor: kActivecardColor,
                      voidCallback: () {},
                      tappable: false)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const BMIPage();
                      },
                    ));
                  },
                  child: Text(
                    'RECALCULATE',
                    style: kButtonTextTheme,
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:bmi_calculator_app/logic/calculate_bmi.dart';
import 'package:bmi_calculator_app/pages/result.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/custom_card.dart';
import 'custom_widgets/icon_content.dart';
import 'custom_widgets/row_layout.dart';
import 'constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  Gender? selectedGender;
  int weight = 60;
  int age = 18;
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kTitle),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RowLayout(
                content1: CustomCard(
                  tappable: true,
                  voidCallback: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? kActivecardColor
                      : kInactivecardColor,
                  contents: const IconContent(
                    label: 'male',
                    iconData: Icons.male,
                  ),
                ),
                content2: CustomCard(
                  tappable: true,
                  voidCallback: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? kActivecardColor
                      : kInactivecardColor,
                  contents: const IconContent(
                    label: 'female',
                    iconData: Icons.female,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomCard(
                    tappable: false,
                    voidCallback: () {},
                    cardColor: kInactivecardColor,
                    contents: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: kTextLabelTheme,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(0),
                              style: kTextHeightTheme,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'cm',
                              style: kTextLabelTheme,
                            ),
                          ],
                        ),
                        Slider(
                          min: 100,
                          max: 262,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              RowLayout(
                content1: CustomCard(
                  tappable: false,
                  voidCallback: () {},
                  cardColor: kInactivecardColor,
                  contents: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: kTextLabelTheme,
                      ),
                      Text(
                        weight.toString(),
                        style: kTextHeightTheme,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: kActivecardColor,
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: kActivecardColor,
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                content2: CustomCard(
                  tappable: false,
                  voidCallback: () {},
                  cardColor: kInactivecardColor,
                  contents: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: kTextLabelTheme,
                      ),
                      Text(
                        age.toString(),
                        style: kTextHeightTheme,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: kActivecardColor,
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: kActivecardColor,
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {
                    CalculateBMI calculateBMI =
                        CalculateBMI(weight: weight, height: height);
                    debugPrint(calculateBMI.getFeedback());
                    debugPrint(calculateBMI.calulateBMI());
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(
                          age: age,
                          indicator: calculateBMI.getResult(),
                          bmi: calculateBMI.calulateBMI(),
                          feedback: calculateBMI.getFeedback(),
                          gender: selectedGender,
                        );
                      },
                    ));
                  },
                  child:
                      Text(kButtonLabel.toUpperCase(), style: kButtonTextTheme),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

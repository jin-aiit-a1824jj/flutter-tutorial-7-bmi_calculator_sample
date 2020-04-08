import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR SAMPEL'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReuseAbleCard(
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                )),
                Expanded(
                    child: ReuseAbleCard(
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                )),
              ]),
            ),
            Expanded(
              child: ReuseAbleCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HEIGHT', style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            '$height',
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue){
                            print(newValue);
                            setState(() {
                              height = newValue.round();
                            });
                          }
                      )
                    ],
                  ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(child: ReuseAbleCard(color: kActiveCardColor)),
                Expanded(child: ReuseAbleCard(color: kActiveCardColor)),
              ]),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        ));
  }

  Gender selectedGender;
  int height = 180;
}



enum Gender { male, female }

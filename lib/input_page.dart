import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReuseAbleCard(
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
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
                      ? activeCardColor
                      : inActiveCardColor,
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
              child: ReuseAbleCard(color: activeCardColor),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(child: ReuseAbleCard(color: activeCardColor)),
                Expanded(child: ReuseAbleCard(color: activeCardColor)),
              ]),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }

  Gender selectedGender;
}

const bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0XFFEB1555);
const inActiveCardColor = Color(0xFF111333);

enum Gender { male, female }

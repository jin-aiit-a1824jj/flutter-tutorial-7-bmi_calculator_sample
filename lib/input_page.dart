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
                    child: GestureDetector(
                      onTap: (){
                        print('Male card was pressed!');
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReuseAbleCard(
                  color: maleCardColor,
                  cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('Male card was pressed!');
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReuseAbleCard(
                  color: femaleCardColor,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                  ),
                ),
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

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateColor(int gender){

    if (gender == 1) {
      if (maleCardColor == inActiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }else{
        maleCardColor = inActiveCardColor;
      }
    }

    if (gender == 2){
      if (femaleCardColor == inActiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      }else{
        femaleCardColor = inActiveCardColor;
      }
    }

  }

}

const bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0XFFEB1555);

const inActiveCardColor  = Color(0xFF111333);
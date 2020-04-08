import 'package:flutter/material.dart';

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
                    child: ReuseAbleCard(color: activeCardColor)
                ),
                Expanded(
                    child: ReuseAbleCard(color: activeCardColor)
                ),
              ]),
            ),
            Expanded(
              child: ReuseAbleCard(color: activeCardColor),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReuseAbleCard(color: activeCardColor)
                ),
                Expanded(
                    child: ReuseAbleCard(color: activeCardColor)
                ),
              ]
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        )
    );
  }
}

class ReuseAbleCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
                      decoration: BoxDecoration(
                          color: this.color,
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.all(15.0),
                );
  }

  final Color color;
  ReuseAbleCard({@required this.color});

}

const bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0XFFEB1555);
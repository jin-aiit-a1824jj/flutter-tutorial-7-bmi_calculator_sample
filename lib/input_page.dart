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
                    child: ReuseAbleCard(color: Color(0xFF1D1E33))
                ),
                Expanded(
                    child: ReuseAbleCard(color: Color(0xFF1D1E33))
                ),
              ]),
            ),
            Expanded(
              child: ReuseAbleCard(color: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReuseAbleCard(color: Color(0xFF1D1E33))
                ),
                Expanded(
                    child: ReuseAbleCard(color: Color(0xFF1D1E33))
                ),
              ]),
            ),
          ],
        ));
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

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4F5E),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      elevation: 0.0,
      onPressed: this.onPress,
      child: Icon(icon),
    );
  }

  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});
}
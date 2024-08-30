import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {

  final String label;
  final Function() onPressed;
  BottomButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(label,
            style: kLargeButtonTextStyle,),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

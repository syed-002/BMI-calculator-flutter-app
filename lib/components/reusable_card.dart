import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgNewColor; //final makes that property immutable
  final Widget? cardChild; //nullable
  final void Function()? onPress; // passing around functions as objects
  //void keyword aint necessry but its makign the selection on tap faster.

  //constructor
  ReusableCard({required this.bgNewColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        // for border radius of our container, we use decoration property
        // colors are given in box decoration generally but it is used very often so flutter gave it out of this property but if we are using it then we should give color inside this box decoration.
        decoration: BoxDecoration(
          color: bgNewColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ), // since it is a function.

    );
  }
}

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Key used to keep track of widget
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  ReusableCard({@required this.colour, this.cardChild, this.onPressed});

  final Color colour;
  final Widget cardChild;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
        child: cardChild,
      ),
    );
  }
}
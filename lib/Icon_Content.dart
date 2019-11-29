import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final String gender;
  final IconData icon;

  const IconContent(this.gender, this.icon);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80,),
        SizedBox(height: 15,),
        Text(gender,style: TextStyle(fontSize: 18,color: Color(0xFF8D8E98)),)
      ],
    );
  }
}

class ResuableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ResuableCard(this.colour, {this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,

        // height: 200,
        // width: 170,
      ),
      child: cardChild,
    );
  }
}

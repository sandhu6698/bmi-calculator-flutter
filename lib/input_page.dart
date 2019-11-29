
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Icon_Content.dart';

const inactivecardcolor = Color(0xFF1D1E33);
const activecardcolor = Color(0xFF111328);
const bottomcontainercolor = Color(0xFFEB1555);
enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender=Gender.male;

                        });
                      },
                      child: new ResuableCard(
                        selectedGender==Gender.male?activecardcolor:inactivecardcolor,
                        cardChild: IconContent("MALE", FontAwesomeIcons.mars),
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender=Gender.female;

                          });
                        },
                        child: new ResuableCard(
                          selectedGender==Gender.female?activecardcolor:inactivecardcolor,
                          cardChild:
                          IconContent("FEMALE", FontAwesomeIcons.venus),
                        ))),
              ],
            ),
          ),
          Expanded(flex: 1, child: new ResuableCard(Color(0xFF1D1E33))),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: new ResuableCard(Color(0xFF1D1E33))),
                Expanded(flex: 1, child: new ResuableCard(Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }


}

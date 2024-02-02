import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        textTheme: Typography().white.apply(fontFamily: 'Poppins'),
      ),
      home: InputPage(),
    );
  }
}

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  var age = 30;
  var height = 150;
  var weight = 50;
  var cardActiveColor = Color.fromARGB(255, 40, 44, 78);
  var cardInactiveColor = Color.fromARGB(255, 38, 42, 76);
  var iconActiveColor = Colors.white;
  var iconInactiveColor = Color.fromARGB(255, 177, 178, 192);
  var textActiveColor = Colors.white;
  var textInactiveColor = Color.fromARGB(255, 177, 178, 192);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(187, 10, 15, 51),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(187, 10, 15, 51),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 18.5, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: gender == Gender.male
                          ? cardActiveColor
                          : cardInactiveColor,
                    ),
                    width: 170,
                    height: 170,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: gender == Gender.male
                                ? iconActiveColor
                                : iconInactiveColor,
                            size: 80,
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: gender == Gender.male
                                    ? textActiveColor
                                    : textInactiveColor),
                          ),
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Ink(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: gender == Gender.female
                            ? cardActiveColor
                            : cardInactiveColor,
                        borderRadius: BorderRadius.circular(10)),
                    width: 170,
                    height: 170,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: gender == Gender.female
                                ? iconActiveColor
                                : iconInactiveColor,
                            size: 80,
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: gender == Gender.female
                                    ? textActiveColor
                                    : textInactiveColor),
                          ),
                        ]),
                  ),
                  onTap: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 20, 25, 59)),
            padding: EdgeInsets.only(top: 20),
            width: 355,
            height: 200,
            child: Column(
              children: [
                Text('HEIGHT', style: TextStyle(fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(),
                    ),
                  ],
                ),
                Slider(
                    min: 130,
                    max: 220,
                    activeColor: Color(0xffeb1555),
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    }),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 20, 25, 59),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text('WEIGHT', style: TextStyle(fontSize: 20)),
                    Text(
                      weight.toString(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          child: Icon(FontAwesomeIcons.minus),
                          constraints:
                              BoxConstraints(minWidth: 56, minHeight: 56),
                          elevation: 10,
                          fillColor: Color(0xff222747),
                          shape: CircleBorder(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: Icon(FontAwesomeIcons.plus),
                          constraints:
                              BoxConstraints(minWidth: 56, minHeight: 56),
                          elevation: 10,
                          fillColor: Color(0xff222747),
                          shape: CircleBorder(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 20, 25, 59),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text('AGE', style: TextStyle(fontSize: 20)),
                    Text(
                      age.toString(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: Icon(FontAwesomeIcons.minus),
                          constraints:
                              BoxConstraints(minWidth: 56, minHeight: 56),
                          elevation: 10,
                          fillColor: Color(0xff222747),
                          shape: CircleBorder(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: Icon(FontAwesomeIcons.plus),
                          constraints:
                              BoxConstraints(minWidth: 56, minHeight: 56),
                          elevation: 10,
                          fillColor: Color(0xff222747),
                          shape: CircleBorder(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              final heightSquared = height / 100;
              final res = weight / (heightSquared * heightSquared);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmi: res.round().toString(),
                          )));
            },
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xffeb1555),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.5, wordSpacing: 1.5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

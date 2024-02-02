import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, this.bmi});
  final String? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(187, 10, 15, 51),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(187, 10, 15, 51),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 18.5, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  'YOUR BMI IS',
                  style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '$bmi',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 7),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'By Muradov Otabek',
              style: TextStyle(letterSpacing: 2, fontSize: 15),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                    'RECALCULATE YOUR BMI',
                    style: TextStyle(
                        fontSize: 18, letterSpacing: 1.5, wordSpacing: 1.5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

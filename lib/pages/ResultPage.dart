import 'package:bmi_calculator/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 5, 42),
      appBar: AppBar(
        backgroundColor: Color(0xff848386),
        title: Text(
          'Ден соолук индекси (BMI)',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Жыйынтык',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(10, 4, 22, 0.941),
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(text: 'RECALCULATE'),
    );
  }
}

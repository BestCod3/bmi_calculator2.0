import 'package:bmi_calculator/bottomBar/bottomBar.dart';
import 'package:bmi_calculator/data/bmiData.dart';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.height, required this.kg});
  final double height;
  final int kg;

  @override
  Widget build(BuildContext context) {
    final bmi = BmiData.BmiCalculate(height, kg);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 5, 42),
      appBar: AppBar(
        backgroundColor: Color(0xff848386),
        title: Text(
          'Индекс здоровья (BMI)',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Результат',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiData.bmiRESULT(bmi).toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    BmiData.BmiCalculate(height, kg).toStringAsFixed(1),
                    style: TextStyle(fontSize: 84, color: Colors.white),
                  ),
                  Text(
                    BmiData.giveDescription(bmi).toString(),
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        text: 'RECALCULATE',
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

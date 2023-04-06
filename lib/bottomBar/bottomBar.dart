import 'package:bmi_calculator/pages/ResultPage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffFF0F65),
              borderRadius: BorderRadius.circular(10)),
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

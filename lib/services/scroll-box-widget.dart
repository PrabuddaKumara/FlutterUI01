import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(20),

      // height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: Color(0xffD4CEFE),
            offset: Offset(0, 7),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffFFE5F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.wallet,
              color: const Color.fromARGB(255, 120, 114, 114),
            ),
          ),

          SizedBox(width: 20),

          Column(
            children: [
              Text("Buying Blue Dress"),
              Row(
                children: [
                  Text("2025/04/13"),
                  SizedBox(width: 20),
                  Text("04.25 p.m "),
                  SizedBox(width: 35),
                ],
              ),
            ],
          ),
          Text("-54h"),
        ],
      ),
    );
  }
}

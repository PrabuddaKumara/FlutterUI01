import 'package:dem/common/color-extension.dart';
import 'package:flutter/material.dart';

class BarView extends StatelessWidget {
  final Map obj;
  final double barWidth;
  final double maxVal;

  const BarView({
    super.key,
    required this.obj,
    required this.barWidth,
    required this.maxVal,
  });

  @override
  Widget build(BuildContext context) {
    var height = 180 - 16 - 16;
    const double minBarHeight = 2.0;


    var incomeVal = double.tryParse(obj["income"].toString()) ?? 0.0;
    var expenseVal = double.tryParse(obj["expense"].toString()) ?? 0.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        Container(
          width: barWidth,
          height: minBarHeight,

          decoration: BoxDecoration(
            color: Tcolor.primary,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Text(
          obj["Name"].toString(),
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    );
  }
}

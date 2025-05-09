import 'package:flutter/material.dart';

class CusteomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onpresed;
  final bool Isselected;
  const CusteomWidget({
    super.key,
    required this.text,
    required this.onpresed,
    required this.Isselected,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration:
          Isselected
              ? BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 16, 7, 7)),

                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                  right: Radius.circular(10),
                ),
                 color: Colors.amber,
                 
              )
              : BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 16, 7, 7)),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                  right: Radius.circular(30),
                ),
               
              ),
      child: MaterialButton(
        onPressed: onpresed,
        elevation: 3.0,

        child: Text(text),
      ),
    );
  }
}

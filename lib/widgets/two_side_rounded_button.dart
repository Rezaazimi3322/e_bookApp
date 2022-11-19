
import 'package:flutter/material.dart';
import '../consttant.dart';



// ignore: camel_case_types
class twoSideRoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final double radious;
  const twoSideRoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.radious = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious),
            )),
        child:  Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

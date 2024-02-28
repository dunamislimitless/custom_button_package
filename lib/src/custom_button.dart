import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textSize,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.borderColor,
    required this.fontweight,
    required this.onTap,
  });

  final double height;
  final double width;
  final Color buttonColor;
  final String text;
  final double textSize;
  final FontWeight fontweight;
  final VoidCallback onTap;
  final double borderRadius;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: buttonColor,
          border: Border.all(color: borderColor)),
      child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: fontweight,
              ),
            ),
          )),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        backgroundColor: Colors.white38,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
              buttonColor: Colors.amber,
              text: 'Hello World!',
              textSize: 24,
              height: 36,
              width: 200,
              borderRadius: 10,
              borderColor: Colors.white,
              fontweight: FontWeight.bold,
              onTap: () {}),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              buttonColor: Colors.redAccent,
              text: 'Welcome to my First Package',
              textSize: 24,
              height: 36,
              width: 400,
              borderRadius: 10,
              borderColor: Colors.white,
              fontweight: FontWeight.bold,
              onTap: () {}),
        ],
      ),
    );
  }
}

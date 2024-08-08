// ignore_for_file: file_names, must_be_immutable, public_member_api_docs

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  double width;
  double height;
  Button({
    required this.width,
    required this.height,
    super.key,
    this.onTap,
    required this.text,
  });
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: height,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 77, 7, 207),
              borderRadius: BorderRadius.circular(10)),
          width: width,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

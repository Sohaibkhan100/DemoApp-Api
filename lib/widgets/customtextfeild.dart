import 'package:flutter/material.dart';

class CustomFeild extends StatefulWidget {
  String label;
  Icon? suffix;
  bool obscurity = false;
  TextEditingController Controller;
  CustomFeild(
      {super.key,
      required this.label,
      this.suffix,
      required this.obscurity,
      required this.Controller});

  @override
  State<CustomFeild> createState() => _CustomFeildState();
}

class _CustomFeildState extends State<CustomFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widget.Controller,
        obscureText: widget.obscurity,
        decoration: InputDecoration(
          hintText: widget.label,
          suffixIcon: widget.suffix,
          filled: true,
          fillColor: Color.fromARGB(255, 231, 226, 226),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

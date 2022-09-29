import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.labelTxt,
    required this.preIcon,
    this.sufIcons,
    required this.hintext,
  });

  final String labelTxt;
  final String hintext;
  final Icon preIcon;
  var sufIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelTxt,
          prefixIcon: preIcon,
          suffixIcon: sufIcons,
          focusColor: Colors.black,
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: hintext,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}

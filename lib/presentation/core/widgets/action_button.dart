import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double height = 60;
  const ActionButton(
      {Key? key, required this.title, required this.onPressed, height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: height,
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        0,
      ),
      elevation: 2,
      color: Colors.green[300],
      onPressed: onPressed,
      child: Text(title,
          style: const TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}

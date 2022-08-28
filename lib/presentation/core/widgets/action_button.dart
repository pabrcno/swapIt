import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ActionButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 50,
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
      color: Colors.green[700],
      onPressed: onPressed,
      child: Text(title,
          style: const TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}

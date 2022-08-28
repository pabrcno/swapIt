import 'dart:async';

import 'package:flutter/material.dart';

class Chronometer extends StatefulWidget {
  final DateTime endTime;
  final TextStyle textStyle;
  const Chronometer({Key? key, required this.endTime, required this.textStyle})
      : super(key: key);

  @override
  State<Chronometer> createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {
  Duration timeLeft = Duration.zero;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (widget.endTime.difference(DateTime.now()) <= Duration.zero ||
          !mounted) {
        t.cancel();
        return;
      }
      setState(() {
        timeLeft = widget.endTime.difference(DateTime.now());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${timeLeft.inDays}d ${timeLeft.inHours % 24}h ${timeLeft.inMinutes % 60}m ${timeLeft.inSeconds % 60}s",
      style: widget.textStyle,
    );
  }
}

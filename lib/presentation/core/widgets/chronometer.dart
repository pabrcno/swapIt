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
  // late Duration timeLeft;
  // late Timer timer;

  @override
  void initState() {
    super.initState();

    // timeLeft = widget.endTime.difference(DateTime.now());
    // timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
    //   if (!mounted || timeLeft.inSeconds <= 0) {
    //     timer.cancel();
    //     return;
    //   }
    //   setState(() {
    //     timeLeft = widget.endTime.difference(DateTime.now());
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "", // "${timeLeft.inDays}d ${timeLeft.inHours % 24}h ${timeLeft.inMinutes % 60}m ${timeLeft.inSeconds % 60}s",
      style: widget.textStyle,
    );
  }
}

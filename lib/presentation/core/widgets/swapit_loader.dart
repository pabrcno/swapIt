import 'package:flutter/material.dart';
import 'dart:async';

class SwapItLoader extends StatefulWidget {
  const SwapItLoader({Key? key}) : super(key: key);

  @override
  State<SwapItLoader> createState() => _SwapItLoaderState();
}

class _SwapItLoaderState extends State<SwapItLoader> {
  double opacity = 0.3;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (!mounted) {
        t.cancel();
        return;
      }
      setState(() {
        opacity = opacity == 0.3 ? 1 : 0.3;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(seconds: 1),
      child: const ImageIcon(
        AssetImage('assets/logo500.png'),
        size: 200,
      ),
    );
  }
}

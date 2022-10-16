import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_clone/constants/color_constants.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  int _pos = 0;
  Timer? _timer;

  final List<String> mascots = [
    "assets/images/image_mascot_1.png",
    "assets/images/image_mascot_2.png",
    "assets/images/image_mascot.png",
  ];

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _pos = (_pos + 1) % mascots.length;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Image.asset(
          mascots[_pos],
          height: 150.0,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    _timer = null;
    super.dispose();
  }
}

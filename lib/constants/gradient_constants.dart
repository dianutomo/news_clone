import 'package:flutter/material.dart';
import 'package:news_clone/constants/color_constants.dart';
import 'package:news_clone/constants/math_utils.dart';

class Gradients {
  static BoxDecoration get feedGradient => BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(getSize(10))),
        gradient: LinearGradient(
          begin: const Alignment(0.5, -0.25),
          end: const Alignment(0.5, 0.25),
          colors: [ColorConstants.whiteColor0, ColorConstants.whiteColor100],
        ),
      );
}

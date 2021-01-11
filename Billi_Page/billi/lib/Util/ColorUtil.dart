import 'package:flutter/material.dart';
import 'dart:math' as math;

Color getRandomColor(){
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.7);
}
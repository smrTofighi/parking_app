import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loading({required Color color, required double size}) {
  return SpinKitWave(
    color: color,
    size: size,
  );
}

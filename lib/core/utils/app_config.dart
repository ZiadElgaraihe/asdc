import 'package:flutter/material.dart';

abstract class AppConfig {
  static late Size sizeData;

  static double _getHeight(double height) {
    return (height / 852) * sizeData.height;
  }

  static double _getWidth(double width) {
    return (width / 393) * sizeData.width;
  }

  static double _convertToLogicalPixels(double valueInPixels) {
    return (valueInPixels / 393) * sizeData.width;
  }
}

extension SizeExtension on num {
  double get h => AppConfig._getHeight(toDouble());
  double get w => AppConfig._getWidth(toDouble());
  double get sp => AppConfig._convertToLogicalPixels(toDouble());
}

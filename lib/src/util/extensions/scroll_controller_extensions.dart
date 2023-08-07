import 'package:flutter/material.dart';
import '../constants/strings.dart';
import '../resources/app_localization.dart';
extension ScrollControllerExtensions on ScrollController {
  void onScrollEndsListener(
      final void Function() callback, {
        double offset = 0,
      }) {
    addListener(() {
      final maxScroll = position.maxScrollExtent;
      final currentScroll = position.pixels - offset;

      if (currentScroll == maxScroll) {
        callback();
      }
    });
  }
}

extension GetImagePath on String{
  String getFullPath(){
    return imagePath+this;
  }
}
extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
extension ColorFull on String{
  Color getColor(){
    return Color(int.parse("0xFF${replaceAll("#", "")}"));
  }
}

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TextStyleFourth({super.key, required this.text, this.align=TextAlign.start, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.headLineStyle4.copyWith(color: isColor==null?Colors.white:Colors.blueGrey), textAlign: align,);
  }
}
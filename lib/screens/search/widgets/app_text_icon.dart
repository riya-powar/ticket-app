import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        
        children: [
          Icon(icon, color: AppStyles.planeColor,),
          SizedBox(width: 30),
          Text(text, style: AppStyles.textStyle)
        ],
      )
    );
  }
}
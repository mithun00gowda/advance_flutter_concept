import 'package:advance_basics/constants/appcolors.dart';
import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({super.key,required this.text1, required this.onTap,});
  final String text1;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          )
        ),
        onPressed: onTap, child: Text(text1,textAlign: TextAlign.center,));
  }
}

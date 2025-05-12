import 'package:advance_basics/screen/home.dart';
import 'package:advance_basics/screen/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/appcolors.dart';
import '../widgets/styles.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz>{
  final List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeScreen = Home(swichScreen);
  }

  void swichScreen(){
    setState(() {
      activeScreen = Questions(onSelectAnswer: chooseAnswer,);
    });
  }

  void chooseAnswer(String answers){
    selectedAnswers.add(answers);
    print(selectedAnswers);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.primaryColor,
            primaryColor: AppColors.primaryColor,
            textButtonTheme: TextButtonThemeData(
                style: Styles.btnStyle
            )
        ),
        home: activeScreen
    );
  }
}
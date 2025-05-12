import 'package:advance_basics/utils/data.dart';
import 'package:advance_basics/widgets/question_summery.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,required this.choosenAnswers});

  final List<String> choosenAnswers;
  List<Map<String,Object>> getSummeryData(){
    final List<Map<String,Object>> summery = [];
    for(var i = 0;i<choosenAnswers.length;i++){
      summery.add({
        'question_index':i,
        "questions":questions[i].text,
        "correct_answer":questions[i].answers[0],
        "user_answer":choosenAnswers[i]
      });
    }
    return summery;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You answerd X out Y Questions correctly!'),
              SizedBox(height: 30,),
              QuestionSummery(summeryData: getSummeryData()),
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text('Restart Quiz!'))
            ],
          ),
        ),
      ),
    );
  }
}

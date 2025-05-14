import 'package:advance_basics/utils/data.dart';
import 'package:advance_basics/widgets/question_summery.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,required this.choosenAnswers,required this.reStart});

  final List<String> choosenAnswers;
  final void Function() reStart;
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
    final summaryData = getSummeryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You answered $numCorrectQuestion out $numTotalQuestion Questions correctly!',style: TextStyle(fontSize: 18,color: Colors.white),textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              QuestionSummery(summeryData: summaryData),
              SizedBox(height: 30,),
              TextButton(onPressed: reStart, child: Text('Restart Quiz!'))
            ],
          ),
        ),
      ),
    );
  }
}

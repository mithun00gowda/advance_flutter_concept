import 'package:advance_basics/utils/data.dart';
import 'package:advance_basics/widgets/answer_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentquestionIndex = 0;

  void answerQuestion(String answers) {
    widget.onSelectAnswer(answers);
    setState(() {
      currentquestionIndex += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentquestionIndex];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Text(currentQuestion.text,style:GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            SizedBox(height: 30,),
              ...currentQuestion.getSuffledAnswers().map((items) {
                return AnswerBtn(text1: items, onTap: (){
                  answerQuestion(items);
                });
              }),
          ],),
        ),
      ),
    );
  }
}

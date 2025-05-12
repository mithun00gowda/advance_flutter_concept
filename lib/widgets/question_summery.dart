import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery({super.key, required this.summeryData});

  final List<Map<String,Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summeryData.map((elements){
        return Row(
          children: [
            Text(((elements['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(elements['questions'] as String),
                SizedBox(height: 5,),
                Text(elements['correct_answer'] as String),
                Text(elements['user_answer'] as String)
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}

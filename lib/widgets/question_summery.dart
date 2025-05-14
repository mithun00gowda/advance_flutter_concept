import 'package:advance_basics/utils/constants.dart';
import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery({super.key, required this.summeryData});

  final List<Map<String,Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height*0.5,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map((elements){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: (elements['correct_answer'] == elements['user_answer']) ? Colors.green : Colors.deepOrangeAccent
                    ),
                    child: Text(((elements['question_index'] as int) + 1).toString())),
                SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(elements['questions'] as String,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 5,),
                      Text(elements['correct_answer'] as String,style: TextStyle(fontSize: 14,color: Colors.white60),textAlign: TextAlign.start,),
                      Text(elements['user_answer'] as String,style: TextStyle(fontSize: 14),)
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

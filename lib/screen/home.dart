import 'package:advance_basics/utils/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;



    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: widget.startQuiz, child: Text('Start Quiz',style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    );
  }
}

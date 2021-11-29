import 'package:flutter/material.dart';

/*
alternative to run the app !!!!!
* void main()
* {
* runApp(MyApp());
* }
* */
void main() =>  runApp(MyApp());

 class MyApp extends StatelessWidget
 {
   var questionindex = 0;
   @override
   Widget build(BuildContext context)
   {
     var questions = ["what\'s your favourite color? " , "what\'s your favourite animal?"];



    return MaterialApp(home: Scaffold(
      appBar: AppBar
              (
              backgroundColor: Colors.red,
              title: Text('Guide app'),
              ), //top blue bar
      body:
      Column
      (
        children:
       [
         Text(questions[questionindex]),
         RaisedButton(child: Text('answer1'), onPressed: answerQuestion),
          RaisedButton(child: Text('answer2'), onPressed: () => print('answer2 chosen')),
          RaisedButton(child: Text('answer3'), onPressed: () {print('answer3 chosen');},)
        ],
      ),

    ),); //crtl+space gives list of arguments supported

   }

   void answerQuestion()
   {
     if(questionindex == 1) {
       questionindex = questionindex + 1;
     }
     else if(questionindex == 2)
       {
         questionindex = 1;
       }
     else
       {
         questionindex=0;
       }
     print(questionindex);
   }
 }

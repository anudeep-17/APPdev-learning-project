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
   @override
   Widget build(BuildContext context)
   {
     var questions = ["whats\'s your favourite color? " , "whats your favourite animal?"];


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
         Text('the question'),
         RaisedButton(child: Text('answer1'), onPressed: answerQuestion),
          RaisedButton(child: Text('answer1'), onPressed: answerQuestion),
          RaisedButton(child: Text('answer1'), onPressed: answerQuestion)
        ],
      ),

    ),); //crtl+space gives list of arguments supported

   }

   void answerQuestion()
   {
     print('answer chosen');
   }
 }

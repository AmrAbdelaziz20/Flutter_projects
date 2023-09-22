import 'package:flutter/material.dart';
import 'appbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Appbrain appbrain = Appbrain();
void main() {
  runApp(const Exam_app());
}

class Exam_app extends StatelessWidget {
  const Exam_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Exam"),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Exam_page(),
        ),
      ),
    );
  }
}

class Exam_page extends StatefulWidget {
  const Exam_page({super.key});

  @override
  State<Exam_page> createState() => _Exam_pageState();
}

class _Exam_pageState extends State<Exam_page> {
  List<Widget> answerResult = [];
  int rightanswers = 0;
  void checkAnswer(bool whatuserpicked) {
    bool correctanswer = appbrain.getQuestionAnswer();
    setState(() {
      if (whatuserpicked == correctanswer) {
        rightanswers++;
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
      }
      if (appbrain.isfinished() == true) {
        Alert(
          context: context,
          title: "EXAM IS FINISHED",
          desc: "You answerd $rightanswers / 7.",
          buttons: [
            DialogButton(
              child: Text(
                "Restart",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        appbrain.reset();
        answerResult = [];
        rightanswers = 0;
      } else {
        appbrain.nextquestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerResult),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appbrain.getQuestionImage()),
              SizedBox(height: 20.0),
              Text(
                appbrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: Text('صح'),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: Text('خطأ'),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
      ],
    );
  }
}

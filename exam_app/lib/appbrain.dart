import 'Questions.dart';

class Appbrain {
  int _questionNumber = 0;
  List<Question> _questionList = [
    Question(
      questionText: 'عدد الكواكب في مجموعتنا الشمسية 8؟',
      questionImage: "images/image-1.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي حيوانات لاحمة',
      questionImage: "images/image-2.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText: 'الصين موجودة في القارة الافريقية',
      questionImage: "images/image-3.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText: 'الارص مسطحة وليست كروية',
      questionImage: "images/image-4.jpg",
      questionAnswer: false,
    ),
    Question(
        questionText: 'باستطاعة الانسان علي قيد الحياة بدون اكل اللحم',
        questionImage: 'images/image-5.jpg',
        questionAnswer: true),
    Question(
        questionText: 'الشمس تدور حول الارض والارض تدور حول القمر',
        questionImage: 'images/image-6.jpg',
        questionAnswer: false),
    Question(
        questionText: 'الحيوانات لا تشعر بالالم',
        questionImage: 'images/image-7.jpg',
        questionAnswer: false),
    // Add more questions as needed
  ];
  void nextquestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questionList[_questionNumber].questionImage;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }

  bool isfinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

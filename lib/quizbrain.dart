import 'question.dart';

class QuizBrain{
  int _qno = 0;
  List<Question> _questionbank = [
    Question('Many peoples are affected due to Corona Virus.' , true),
    Question('Doctors found a correct vaccine for it.' , false),
    Question('We don\'t think our college will reopen this year.'  , true),
    Question('But we wanted to end this soon.', true),
    Question('So that we start living our life as we lived before.', true),
    Question(
        'Chinese products are the best',
        false),
    Question(
        'We should start boycotting Chinese products and services.',
        true),
    Question(
        'This will increase the GDP of China.',
        false),
    Question(
        'Oh! so you mean it will decrease.',
        true),
    Question('Since these questions are mine so it seems you to get frustated from these questions.', true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question(
        'So how was that one ,interesting na',
        true),

  ];

  bool limit(){
    if(_qno < _questionbank.length - 1)
      return true;
    else
      return false;
  }

  void check(){
    if(_qno < _questionbank.length -1)
      _qno = _qno + 1;
    else
      _qno = 0;
  }

  String getquestiontext(){
    return _questionbank[_qno].questiontext;
  }

  bool getans(){
    return _questionbank[_qno].questionans;
  }
}
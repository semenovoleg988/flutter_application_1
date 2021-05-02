class SelectTask {
  final String task;
  final List<String> possibleAnswers;
  final int answerNumber;

  SelectTask({this.task, this.possibleAnswers, this.answerNumber});

  String getTask() => task;
  List<String> getPossibleAnswers() => possibleAnswers;
  int getAnswerNumber() => answerNumber;
}

class TypeTask {
  final String task;
  final String answer;

  TypeTask({this.task, this.answer});

  String getTask() => task;
  String getAnswerNumber() => answer;
}

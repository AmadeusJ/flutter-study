class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get getShuffledAnswers {  // get은 getter 함수 지정어
    final shuffledList = List.of(answers);
    shuffledList.shuffle();   // List of data type 'List' has a method 'shuffle'
    return shuffledList;
  }
}



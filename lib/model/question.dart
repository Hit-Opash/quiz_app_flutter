class QuestionModel {

  const QuestionModel(this.question,this.answer);

  final String question;
  final List<String> answer;

  List<String> getShuffleAnswer() {
    final shuffleList = List.of(answer);
    shuffleList.shuffle();
    return shuffleList;
  }

}
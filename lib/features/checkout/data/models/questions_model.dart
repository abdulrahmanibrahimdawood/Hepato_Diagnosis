class QuestionModel {
  final String id;
  final String question;
  final String answer;

  QuestionModel({
    required this.id,
    required this.question,
    required this.answer,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> jsonData) {
    return QuestionModel(
      id: jsonData['questions_id'].toString(),
      question: jsonData['question_text'],
      answer: jsonData['answer_text'],
    );
  }
}

class AdviceModel {
  final String id;
  final String title;
  final String description;
  final String image;

  AdviceModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image});
  factory AdviceModel.fromJson(jsonData) {
    return AdviceModel(
      id: jsonData['advice_id'],
      title: jsonData['title'],
      description: jsonData['description'],
      image: jsonData['advice_image'],
    );
  }
}

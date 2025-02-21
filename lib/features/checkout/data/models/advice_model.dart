class AdviceModel {
  final String id;
  final String title;
  final String description;
  final String image;

  AdviceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  factory AdviceModel.fromJson(Map<String, dynamic> jsonData) {
    String baseUrl =
        "https://efc1-156-197-202-8.ngrok-free.app/project/advice/uploads/";
    String imagePath = jsonData['advice_image'] ?? "";

    if (imagePath.startsWith("uploads/")) {
      imagePath = imagePath.replaceFirst("uploads/", "");
    }

    return AdviceModel(
      id: jsonData['advice_id'].toString(),
      title: jsonData['title'],
      description: jsonData['description'],
      image: "$baseUrl$imagePath",
    );
  }
}

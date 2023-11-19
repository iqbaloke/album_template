class ListAbumModel {
  final String title;
  final String image;

  ListAbumModel({
    required this.title,
    required this.image,
  });

  factory ListAbumModel.fromJson(Map<String, dynamic> json) {
    return ListAbumModel(
      title: json['title'],
      image: json['image'],
    );
  }
}

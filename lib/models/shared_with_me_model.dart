class SharedWithMeModel {
  final String title;
  final int jumlah;
  final int peserta;
  final String image;

  SharedWithMeModel({
    required this.title,
    required this.jumlah,
    required this.peserta,
    required this.image,
  });

  factory SharedWithMeModel.fromJson(Map<String, dynamic> json) {
    return SharedWithMeModel(
      title: json['title'],
      jumlah: json['jumlah'],
      peserta: json['peserta'],
      image: json['image'],
    );
  }
}

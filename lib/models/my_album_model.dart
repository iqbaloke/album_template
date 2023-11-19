class MyAlbumModel {
  final String title;
  final int jumlah;
  final String image;

  MyAlbumModel({
    required this.title,
    required this.jumlah,
    required this.image,
  });

  factory MyAlbumModel.fromJson(Map<String, dynamic> json) {
    return MyAlbumModel(
      title: json['title'],
      jumlah: json['jumlah'],
      image: json['image'],
    );
  }
}

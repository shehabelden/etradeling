class Post {
  String? userId;
  List<dynamic>? images;
  String? text;
  DateTime? date;

  Post({this.userId, this.images, this.text, this.date});

  fromMap(Map<String, dynamic> map) {
    return Post(
        userId: map['userId'] ?? '',
        images: map['images'] ??
            [
              'https://drive.google.com/uc?export=view&id=1SVXNgYjWidATdPpPfswlWtS31DnhjB-2',
            ],
        text: map['text'] == null ? '' : map['text'].join(" "),
        date: map['date'] == null
            ? DateTime.now()
            : DateTime.parse(map['date'].toDate().toString()));
  }
}

class MovieModel {
  String title;
  String imageurl;
  String content;

  MovieModel({this.title, this.content, this.imageurl});
  MovieModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageurl = json['poster_path'];
    content = json['overview'];
  }
}

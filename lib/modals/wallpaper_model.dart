class Wallpaper {
  String largeImageUrl;

  Wallpaper({
    required this.largeImageUrl
  });

  factory Wallpaper.fromMap(Map<String, dynamic> map,) {
    return Wallpaper(
      largeImageUrl: map['largeImageURL'], // Initialize largeImageUrl here if needed
    );
  }
}

class Hit {
  int id;
  String pageUrl;

  String tags;
  String previewUrl;
  int previewWidth;
  int previewHeight;
  String webformatUrl;
  int webformatWidth;
  int webformatHeight;
  String largeImageUrl;
  int imageWidth;
  int imageHeight;
  int imageSize;
  int views;
  int downloads;
  int collections;
  int likes;
  int comments;
  int userId;
  String user;
  String userImageUrl;

  Hit({
    required this.id,
    required this.pageUrl,

    required this.tags,
    required this.previewUrl,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatUrl,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageUrl,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.userId,
    required this.user,
    required this.userImageUrl,
  });

  factory Hit.fromMap(Map<String, dynamic> map) {
    return Hit(
      id: map['id'],
      pageUrl: map['pageURL'],

      tags: map['tags'],
      previewUrl: map['previewURL'],
      previewWidth: map['previewWidth'],
      previewHeight: map['previewHeight'],
      webformatUrl: map['webformatURL'],
      webformatWidth: map['webformatWidth'],
      webformatHeight: map['webformatHeight'],
      largeImageUrl: map['largeImageURL'],
      imageWidth: map['imageWidth'],
      imageHeight: map['imageHeight'],
      imageSize: map['imageSize'],
      views: map['views'],
      downloads: map['downloads'],
      collections: map['collections'],
      likes: map['likes'],
      comments: map['comments'],
      userId: map['user_id'],
      user: map['user'],
      userImageUrl: map['userImageURL'],
    );
  }


}

// class Wallpaper{
//   String imageurl;
//   Wallpaper(this.imageurl);
//   factory Wallpaper.fromMap({required Map data}){
//     return Wallpaper(data["largeImageUrl"]);
//   }
// }
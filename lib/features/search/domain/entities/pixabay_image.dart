// {
//             "id": 9105247,
//             "pageURL": "https://pixabay.com/photos/squirrel-tree-squirrel-rodent-9105247/",
//             "type": "photo",
//             "tags": "squirrel, tree squirrel, rodent",
//             "previewURL": "https://cdn.pixabay.com/photo/2024/10/08/12/04/squirrel-9105247_150.jpg",
//             "previewWidth": 150,
//             "previewHeight": 100,
//             "webformatURL": "https://pixabay.com/get/g93f1e7bd4b17a1d67660790d7e15a7936861e2b7a4a6a7a217d48723f553a5299effa7e4859018043e309a551143be45600df7a4f29b24a8d8d8324fa4534c37_640.jpg",
//             "webformatWidth": 640,
//             "webformatHeight": 427,
//             "largeImageURL": "https://pixabay.com/get/gdfc326939a01a5eb3e56738626e79933f58005f20780fd7b19c9c7b299f8d828425ea79b77080ccb96884d95cef14b07bc63cd7280e3d2056d56f418d1b73a07_1280.jpg",
//             "imageWidth": 6000,
//             "imageHeight": 4000,
//             "imageSize": 6652238,
//             "views": 39,
//             "downloads": 32,
//             "collections": 3,
//             "likes": 4,
//             "comments": 1,
//             "user_id": 10084616,
//             "user": "Nennieinszweidrei",
//             "userImageURL": "https://cdn.pixabay.com/user/2022/12/04/11-13-16-116_250x250.png"
//         },

class PixabayImage {
  final int id;
  final String pageURL;
  final String type;
  final String tags;
  final String previewURL;
  final int previewWidth;
  final int previewHeight;
  final String webformatURL;
  final int webformatWidth;
  final int webformatHeight;
  final String largeImageURL;
  final int imageWidth;
  final int imageHeight;
  final int imageSize;
  final int views;
  final int downloads;
  final int collections;
  final int likes;
  final int comments;
  final int userId;
  final String user;
  final String userImageURL;

  PixabayImage({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatURL,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageURL,
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
    required this.userImageURL,
  });

  factory PixabayImage.fromMap(Map<String, dynamic> map) {
    return PixabayImage(
      id: map["id"],
      pageURL: map["pageURL"],
      type: map["type"],
      tags: map["tags"],
      previewURL: map["previewURL"],
      previewWidth: map["previewWidth"],
      previewHeight: map["previewHeight"],
      webformatURL: map["webformatURL"],
      webformatWidth: map["webformatWidth"],
      webformatHeight: map["webformatHeight"],
      largeImageURL: map["largeImageURL"],
      imageWidth: map["imageWidth"],
      imageHeight: map["imageHeight"],
      imageSize: map["imageSize"],
      views: map["views"],
      downloads: map["downloads"],
      collections: map["collections"],
      likes: map["likes"],
      comments: map["comments"],
      userId: map["user_id"],
      user: map["user"],
      userImageURL: map["userImageURL"],
    );
  }

  String get formattedViewsCount =>
      views < 1000 ? views.toString() : '${(views / 1000).toStringAsFixed(1)}k';
}

class PostModel {
  final String postId;
  final String userId;
  final String username;
  final String description;
  final String postUrl;
  final DateTime datePublished;
  final List likes;

  PostModel({
    required this.postId,
    required this.userId,
    required this.username,
    required this.description,
    required this.postUrl,
    required this.datePublished,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'userId': userId,
        'username': username,
        'description': description,
        'postUrl': postUrl,
        'datePublished': datePublished,
        'likes': likes,
      };

  factory PostModel.fromSnap(Map<String, dynamic> snapshot) {
    return PostModel(
      postId: snapshot['postId'],
      userId: snapshot['userId'],
      username: snapshot['username'],
      description: snapshot['description'],
      postUrl: snapshot['postUrl'],
      datePublished: snapshot['datePublished'].toDate(),
      likes: snapshot['likes'],
    );
  }
}

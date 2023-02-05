class FirebaseConstants {
  static FirebaseConstants? _instance;
  static FirebaseConstants get instance {
    _instance ??= FirebaseConstants._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  FirebaseConstants._init();
  String usersCollection = 'users';
  String communitiesCollection = 'communities';
  String postsCollection = 'posts';
  String commentsCollection = 'comments';
}

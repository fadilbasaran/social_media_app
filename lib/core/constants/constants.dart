class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  AppConstants._init();
  String logoPath = 'assets/images/logo.png';
  String loginEmotePath = 'assets/images/loginEmote.png';
  String googlePath = 'assets/images/google.png';
}

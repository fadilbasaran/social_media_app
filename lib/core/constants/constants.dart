class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  AppConstants._init();
  String bannerDefault =
      'https://thumbs.dreamstime.com/b/abstract-stained-pattern-rectangle-background-blue-sky-over-fiery-red-orange-color-modern-painting-art-watercolor-effe-texture-123047399.jpg';
  String avatarDefault =
      'https://external-preview.redd.it/5kh5OreeLd85QsqYO1Xz_4XSLYwZntfjqou-8fyBFoE.png?auto=webp&s=dbdabd04c399ce9c761ff899f5d38656d1de87c2';
  String logoPath = 'assets/images/logo.png';
  String loginEmotePath = 'assets/images/loginEmote.png';
  String googlePath = 'assets/images/google.png';
}

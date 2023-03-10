

import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String profilPic;
  final String banner;
  final String uid;
  final bool isAuthenticated;
  final int karma;
  final List<String> awards;
  UserModel({
    required this.name,
    required this.profilPic,
    required this.banner,
    required this.uid,
    required this.isAuthenticated,
    required this.karma,
    required this.awards,
  });
  

  UserModel copyWith({
    String? name,
    String? profilPic,
    String? banner,
    String? uid,
    bool? isAuthenticated,
    int? karma,
    List<String>? awards,
  }) {
    return UserModel(
      name: name ?? this.name,
      profilPic: profilPic ?? this.profilPic,
      banner: banner ?? this.banner,
      uid: uid ?? this.uid,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      karma: karma ?? this.karma,
      awards: awards ?? this.awards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profilPic': profilPic,
      'banner': banner,
      'uid': uid,
      'isAuthenticated': isAuthenticated,
      'karma': karma,
      'awards': awards,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      profilPic: map['profilPic'] as String,
      banner: map['banner'] as String,
      uid: map['uid'] as String,
      isAuthenticated: map['isAuthenticated'] as bool,
      karma: map['karma'] as int,
      awards: List<String>.from((map['awards'] as List<String>),
    ));
  }


  @override
  String toString() {
    return 'UserModel(name: $name, profilPic: $profilPic, banner: $banner, uid: $uid, isAuthenticated: $isAuthenticated, karma: $karma, awards: $awards)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.profilPic == profilPic &&
      other.banner == banner &&
      other.uid == uid &&
      other.isAuthenticated == isAuthenticated &&
      other.karma == karma &&
      listEquals(other.awards, awards);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      profilPic.hashCode ^
      banner.hashCode ^
      uid.hashCode ^
      isAuthenticated.hashCode ^
      karma.hashCode ^
      awards.hashCode;
  }
}

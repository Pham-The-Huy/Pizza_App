import 'package:cloud_firestore/cloud_firestore.dart';

class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, dynamic> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'] ?? '', // Kiểm tra và sử dụng một giá trị mặc định nếu giá trị là null
      email: doc['email'] ?? '',
      name: doc['name'] ?? '',
      hasActiveCart: doc['hasActiveCart'] ?? false, // Sử dụng giá trị mặc định là false nếu giá trị là null
    );
  }
}

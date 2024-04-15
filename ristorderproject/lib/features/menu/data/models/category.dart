import 'package:flutter/foundation.dart';
import 'package:ristorderproject/features/menu/domain/entities/category_entity.dart';

class Category {
  final String id;
  final String title;

  Category(
      {required this.id,
      required this.title
      });

  factory Category.fromJson(Map<String, dynamic> data, String documentId){
    return Category(
        id: documentId,
        title: data['title'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title
    };
  }
}
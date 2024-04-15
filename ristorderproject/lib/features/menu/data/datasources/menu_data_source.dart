import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ristorderproject/features/menu/data/models/category.dart';

class MenuDataSource {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Category>> getCategories() async {
    final snapshot = await firestore.collection('categorie').get();
    final categories = snapshot.docs.map((doc) {

      return Category.fromJson(doc.data() as Map<String, dynamic>, doc.id);

    }).toList();
    //print("Categorie: ${categories.map((e) => e.title).toList()}");

    return categories;
  }
}
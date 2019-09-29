import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseAccess {
  getQueryById(String collection, int id) {
    return Firestore.instance
        .collection('records')
        .where('id', isEqualTo: id)
        .getDocuments();
  }

  getQueryByCategory(String collection, String category) {
    return Firestore.instance
        .collection('records')
        .where('category', isEqualTo: category)
        .getDocuments();
  }

  getQueryOfString(String collection, int id) {
    return Firestore.instance
        .collection('quotes')
        .where('id', isEqualTo: id)
        .getDocuments();
  }
}

//onPressed: () {
//print(DatabaseAccess()
//    .getQueryById('records', 1)
//    .then((QuerySnapshot docs) {
//if (docs.documents.isNotEmpty) {
//record = docs.documents[0].data;
//print(record.toString());
//print(record['recordNumber']);
//}
//}));

//routes: {
//'/': (ctx) => HomeScreen(),
//ProfileScreen.routeName: (ctx) => ProfileScreen(),
//PastFailureScreen.routeName: (ctx) => PastFailureScreen(),
//CategoriesOverviewScreen.routeName: (ctx) => CategoriesOverviewScreen(),
//CategoryListViewScreen.routeName: (ctx) => CategoryListViewScreen(),
//ComparisonScreen.routeName: (ctx) => ComparisonScreen(),
//},

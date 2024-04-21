import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TBBMainCategoriesRecord extends FirestoreRecord {
  TBBMainCategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TBBMainCategories');

  static Stream<TBBMainCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TBBMainCategoriesRecord.fromSnapshot(s));

  static Future<TBBMainCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TBBMainCategoriesRecord.fromSnapshot(s));

  static TBBMainCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TBBMainCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TBBMainCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TBBMainCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TBBMainCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TBBMainCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTBBMainCategoriesRecordData({
  String? title,
  String? category,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'category': category,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class TBBMainCategoriesRecordDocumentEquality
    implements Equality<TBBMainCategoriesRecord> {
  const TBBMainCategoriesRecordDocumentEquality();

  @override
  bool equals(TBBMainCategoriesRecord? e1, TBBMainCategoriesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image;
  }

  @override
  int hash(TBBMainCategoriesRecord? e) =>
      const ListEquality().hash([e?.title, e?.category, e?.image]);

  @override
  bool isValidKey(Object? o) => o is TBBMainCategoriesRecord;
}

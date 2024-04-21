import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TradecategoriesRecord extends FirestoreRecord {
  TradecategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tradecategories');

  static Stream<TradecategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TradecategoriesRecord.fromSnapshot(s));

  static Future<TradecategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TradecategoriesRecord.fromSnapshot(s));

  static TradecategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TradecategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TradecategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TradecategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TradecategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TradecategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTradecategoriesRecordData({
  String? title,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class TradecategoriesRecordDocumentEquality
    implements Equality<TradecategoriesRecord> {
  const TradecategoriesRecordDocumentEquality();

  @override
  bool equals(TradecategoriesRecord? e1, TradecategoriesRecord? e2) {
    return e1?.title == e2?.title && e1?.category == e2?.category;
  }

  @override
  int hash(TradecategoriesRecord? e) =>
      const ListEquality().hash([e?.title, e?.category]);

  @override
  bool isValidKey(Object? o) => o is TradecategoriesRecord;
}

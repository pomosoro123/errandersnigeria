import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TradeitemsRecord extends FirestoreRecord {
  TradeitemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  bool hasSubcategory() => _subcategory != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _title = snapshotData['title'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _owner = snapshotData['owner'] as String?;
    _status = snapshotData['status'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _subcategory = snapshotData['subcategory'] as String?;
    _item = snapshotData['item'] as String?;
    _state = snapshotData['state'] as String?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tradeitems');

  static Stream<TradeitemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TradeitemsRecord.fromSnapshot(s));

  static Future<TradeitemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TradeitemsRecord.fromSnapshot(s));

  static TradeitemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TradeitemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TradeitemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TradeitemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TradeitemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TradeitemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTradeitemsRecordData({
  String? img,
  String? title,
  int? price,
  String? owner,
  String? status,
  DateTime? date,
  String? category,
  String? subcategory,
  String? item,
  String? state,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'title': title,
      'price': price,
      'owner': owner,
      'status': status,
      'date': date,
      'category': category,
      'subcategory': subcategory,
      'item': item,
      'state': state,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class TradeitemsRecordDocumentEquality implements Equality<TradeitemsRecord> {
  const TradeitemsRecordDocumentEquality();

  @override
  bool equals(TradeitemsRecord? e1, TradeitemsRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.title == e2?.title &&
        e1?.price == e2?.price &&
        e1?.owner == e2?.owner &&
        e1?.status == e2?.status &&
        e1?.date == e2?.date &&
        e1?.category == e2?.category &&
        e1?.subcategory == e2?.subcategory &&
        e1?.item == e2?.item &&
        e1?.state == e2?.state &&
        e1?.address == e2?.address;
  }

  @override
  int hash(TradeitemsRecord? e) => const ListEquality().hash([
        e?.img,
        e?.title,
        e?.price,
        e?.owner,
        e?.status,
        e?.date,
        e?.category,
        e?.subcategory,
        e?.item,
        e?.state,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is TradeitemsRecord;
}

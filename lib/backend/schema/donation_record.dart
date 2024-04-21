import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DonationRecord extends FirestoreRecord {
  DonationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  bool hasMethod() => _method != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _email = snapshotData['email'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _phone = snapshotData['phone'] as String?;
    _address = snapshotData['address'] as String?;
    _method = snapshotData['method'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donation');

  static Stream<DonationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonationRecord.fromSnapshot(s));

  static Future<DonationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonationRecord.fromSnapshot(s));

  static DonationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationRecordData({
  String? category,
  String? name,
  String? description,
  String? image,
  String? email,
  DateTime? date,
  String? phone,
  String? address,
  String? method,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'name': name,
      'description': description,
      'image': image,
      'email': email,
      'date': date,
      'phone': phone,
      'address': address,
      'method': method,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationRecordDocumentEquality implements Equality<DonationRecord> {
  const DonationRecordDocumentEquality();

  @override
  bool equals(DonationRecord? e1, DonationRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.email == e2?.email &&
        e1?.date == e2?.date &&
        e1?.phone == e2?.phone &&
        e1?.address == e2?.address &&
        e1?.method == e2?.method;
  }

  @override
  int hash(DonationRecord? e) => const ListEquality().hash([
        e?.category,
        e?.name,
        e?.description,
        e?.image,
        e?.email,
        e?.date,
        e?.phone,
        e?.address,
        e?.method
      ]);

  @override
  bool isValidKey(Object? o) => o is DonationRecord;
}

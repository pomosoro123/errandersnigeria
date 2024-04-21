import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepositsRecord extends FirestoreRecord {
  DepositsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "bankaccount" field.
  String? _bankaccount;
  String get bankaccount => _bankaccount ?? '';
  bool hasBankaccount() => _bankaccount != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "useremail" field.
  String? _useremail;
  String get useremail => _useremail ?? '';
  bool hasUseremail() => _useremail != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as String?;
    _bankname = snapshotData['bankname'] as String?;
    _bankaccount = snapshotData['bankaccount'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _image = snapshotData['image'] as String?;
    _id = snapshotData['id'] as String?;
    _active = snapshotData['active'] as bool?;
    _useremail = snapshotData['useremail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deposits');

  static Stream<DepositsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepositsRecord.fromSnapshot(s));

  static Future<DepositsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepositsRecord.fromSnapshot(s));

  static DepositsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepositsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepositsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepositsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepositsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepositsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepositsRecordData({
  DocumentReference? user,
  DateTime? date,
  double? amount,
  String? description,
  String? status,
  String? bankname,
  String? bankaccount,
  bool? approved,
  String? image,
  String? id,
  bool? active,
  String? useremail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'date': date,
      'amount': amount,
      'description': description,
      'status': status,
      'bankname': bankname,
      'bankaccount': bankaccount,
      'approved': approved,
      'image': image,
      'id': id,
      'active': active,
      'useremail': useremail,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepositsRecordDocumentEquality implements Equality<DepositsRecord> {
  const DepositsRecordDocumentEquality();

  @override
  bool equals(DepositsRecord? e1, DepositsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.amount == e2?.amount &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.bankname == e2?.bankname &&
        e1?.bankaccount == e2?.bankaccount &&
        e1?.approved == e2?.approved &&
        e1?.image == e2?.image &&
        e1?.id == e2?.id &&
        e1?.active == e2?.active &&
        e1?.useremail == e2?.useremail;
  }

  @override
  int hash(DepositsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.date,
        e?.amount,
        e?.description,
        e?.status,
        e?.bankname,
        e?.bankaccount,
        e?.approved,
        e?.image,
        e?.id,
        e?.active,
        e?.useremail
      ]);

  @override
  bool isValidKey(Object? o) => o is DepositsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WithdrawalRecord extends FirestoreRecord {
  WithdrawalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "bankaccountno" field.
  String? _bankaccountno;
  String get bankaccountno => _bankaccountno ?? '';
  bool hasBankaccountno() => _bankaccountno != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "banktype" field.
  String? _banktype;
  String get banktype => _banktype ?? '';
  bool hasBanktype() => _banktype != null;

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
    _userref = snapshotData['userref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
    _bankname = snapshotData['bankname'] as String?;
    _bankaccountno = snapshotData['bankaccountno'] as String?;
    _status = snapshotData['status'] as String?;
    _banktype = snapshotData['banktype'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _image = snapshotData['image'] as String?;
    _id = snapshotData['id'] as String?;
    _active = snapshotData['active'] as bool?;
    _useremail = snapshotData['useremail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('withdrawal');

  static Stream<WithdrawalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WithdrawalRecord.fromSnapshot(s));

  static Future<WithdrawalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WithdrawalRecord.fromSnapshot(s));

  static WithdrawalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WithdrawalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WithdrawalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WithdrawalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WithdrawalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WithdrawalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWithdrawalRecordData({
  DocumentReference? userref,
  DateTime? date,
  double? amount,
  String? bankname,
  String? bankaccountno,
  String? status,
  String? banktype,
  bool? approved,
  String? image,
  String? id,
  bool? active,
  String? useremail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'date': date,
      'amount': amount,
      'bankname': bankname,
      'bankaccountno': bankaccountno,
      'status': status,
      'banktype': banktype,
      'approved': approved,
      'image': image,
      'id': id,
      'active': active,
      'useremail': useremail,
    }.withoutNulls,
  );

  return firestoreData;
}

class WithdrawalRecordDocumentEquality implements Equality<WithdrawalRecord> {
  const WithdrawalRecordDocumentEquality();

  @override
  bool equals(WithdrawalRecord? e1, WithdrawalRecord? e2) {
    return e1?.userref == e2?.userref &&
        e1?.date == e2?.date &&
        e1?.amount == e2?.amount &&
        e1?.bankname == e2?.bankname &&
        e1?.bankaccountno == e2?.bankaccountno &&
        e1?.status == e2?.status &&
        e1?.banktype == e2?.banktype &&
        e1?.approved == e2?.approved &&
        e1?.image == e2?.image &&
        e1?.id == e2?.id &&
        e1?.active == e2?.active &&
        e1?.useremail == e2?.useremail;
  }

  @override
  int hash(WithdrawalRecord? e) => const ListEquality().hash([
        e?.userref,
        e?.date,
        e?.amount,
        e?.bankname,
        e?.bankaccountno,
        e?.status,
        e?.banktype,
        e?.approved,
        e?.image,
        e?.id,
        e?.active,
        e?.useremail
      ]);

  @override
  bool isValidKey(Object? o) => o is WithdrawalRecord;
}

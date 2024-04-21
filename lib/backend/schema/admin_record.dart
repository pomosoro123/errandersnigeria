import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminRecord extends FirestoreRecord {
  AdminRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "generalnot" field.
  String? _generalnot;
  String get generalnot => _generalnot ?? '';
  bool hasGeneralnot() => _generalnot != null;

  // "generalmessage" field.
  String? _generalmessage;
  String get generalmessage => _generalmessage ?? '';
  bool hasGeneralmessage() => _generalmessage != null;

  // "bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "bankaccount" field.
  String? _bankaccount;
  String get bankaccount => _bankaccount ?? '';
  bool hasBankaccount() => _bankaccount != null;

  // "banktype" field.
  String? _banktype;
  String get banktype => _banktype ?? '';
  bool hasBanktype() => _banktype != null;

  // "phonenumber" field.
  String? _phonenumber;
  String get phonenumber => _phonenumber ?? '';
  bool hasPhonenumber() => _phonenumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "hq" field.
  List<String>? _hq;
  List<String> get hq => _hq ?? const [];
  bool hasHq() => _hq != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "bankdetails" field.
  List<String>? _bankdetails;
  List<String> get bankdetails => _bankdetails ?? const [];
  bool hasBankdetails() => _bankdetails != null;

  // "subcriptionamount" field.
  double? _subcriptionamount;
  double get subcriptionamount => _subcriptionamount ?? 0.0;
  bool hasSubcriptionamount() => _subcriptionamount != null;

  // "subcriptionlink" field.
  String? _subcriptionlink;
  String get subcriptionlink => _subcriptionlink ?? '';
  bool hasSubcriptionlink() => _subcriptionlink != null;

  // "hq1" field.
  String? _hq1;
  String get hq1 => _hq1 ?? '';
  bool hasHq1() => _hq1 != null;

  // "hq2" field.
  String? _hq2;
  String get hq2 => _hq2 ?? '';
  bool hasHq2() => _hq2 != null;

  // "hq3" field.
  String? _hq3;
  String get hq3 => _hq3 ?? '';
  bool hasHq3() => _hq3 != null;

  void _initializeFields() {
    _generalnot = snapshotData['generalnot'] as String?;
    _generalmessage = snapshotData['generalmessage'] as String?;
    _bankname = snapshotData['bankname'] as String?;
    _bankaccount = snapshotData['bankaccount'] as String?;
    _banktype = snapshotData['banktype'] as String?;
    _phonenumber = snapshotData['phonenumber'] as String?;
    _email = snapshotData['email'] as String?;
    _hq = getDataList(snapshotData['hq']);
    _ref = snapshotData['ref'] as DocumentReference?;
    _bankdetails = getDataList(snapshotData['bankdetails']);
    _subcriptionamount = castToType<double>(snapshotData['subcriptionamount']);
    _subcriptionlink = snapshotData['subcriptionlink'] as String?;
    _hq1 = snapshotData['hq1'] as String?;
    _hq2 = snapshotData['hq2'] as String?;
    _hq3 = snapshotData['hq3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin');

  static Stream<AdminRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminRecord.fromSnapshot(s));

  static Future<AdminRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminRecord.fromSnapshot(s));

  static AdminRecord fromSnapshot(DocumentSnapshot snapshot) => AdminRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminRecordData({
  String? generalnot,
  String? generalmessage,
  String? bankname,
  String? bankaccount,
  String? banktype,
  String? phonenumber,
  String? email,
  DocumentReference? ref,
  double? subcriptionamount,
  String? subcriptionlink,
  String? hq1,
  String? hq2,
  String? hq3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'generalnot': generalnot,
      'generalmessage': generalmessage,
      'bankname': bankname,
      'bankaccount': bankaccount,
      'banktype': banktype,
      'phonenumber': phonenumber,
      'email': email,
      'ref': ref,
      'subcriptionamount': subcriptionamount,
      'subcriptionlink': subcriptionlink,
      'hq1': hq1,
      'hq2': hq2,
      'hq3': hq3,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminRecordDocumentEquality implements Equality<AdminRecord> {
  const AdminRecordDocumentEquality();

  @override
  bool equals(AdminRecord? e1, AdminRecord? e2) {
    const listEquality = ListEquality();
    return e1?.generalnot == e2?.generalnot &&
        e1?.generalmessage == e2?.generalmessage &&
        e1?.bankname == e2?.bankname &&
        e1?.bankaccount == e2?.bankaccount &&
        e1?.banktype == e2?.banktype &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.email == e2?.email &&
        listEquality.equals(e1?.hq, e2?.hq) &&
        e1?.ref == e2?.ref &&
        listEquality.equals(e1?.bankdetails, e2?.bankdetails) &&
        e1?.subcriptionamount == e2?.subcriptionamount &&
        e1?.subcriptionlink == e2?.subcriptionlink &&
        e1?.hq1 == e2?.hq1 &&
        e1?.hq2 == e2?.hq2 &&
        e1?.hq3 == e2?.hq3;
  }

  @override
  int hash(AdminRecord? e) => const ListEquality().hash([
        e?.generalnot,
        e?.generalmessage,
        e?.bankname,
        e?.bankaccount,
        e?.banktype,
        e?.phonenumber,
        e?.email,
        e?.hq,
        e?.ref,
        e?.bankdetails,
        e?.subcriptionamount,
        e?.subcriptionlink,
        e?.hq1,
        e?.hq2,
        e?.hq3
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminRecord;
}

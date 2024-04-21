import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class VerificationRecord extends FirestoreRecord {
  VerificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  bool hasToken() => _token != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "documentid" field.
  String? _documentid;
  String get documentid => _documentid ?? '';
  bool hasDocumentid() => _documentid != null;

  // "Document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "closed" field.
  bool? _closed;
  bool get closed => _closed ?? false;
  bool hasClosed() => _closed != null;

  // "useremail" field.
  String? _useremail;
  String get useremail => _useremail ?? '';
  bool hasUseremail() => _useremail != null;

  void _initializeFields() {
    _token = snapshotData['token'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _documentid = snapshotData['documentid'] as String?;
    _document = snapshotData['Document'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _seen = snapshotData['seen'] as bool?;
    _date = snapshotData['date'] as DateTime?;
    _closed = snapshotData['closed'] as bool?;
    _useremail = snapshotData['useremail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('verification');

  static Stream<VerificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VerificationRecord.fromSnapshot(s));

  static Future<VerificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VerificationRecord.fromSnapshot(s));

  static VerificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VerificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VerificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VerificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VerificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VerificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVerificationRecordData({
  String? token,
  DocumentReference? ref,
  String? image,
  String? documentid,
  String? document,
  bool? approved,
  bool? seen,
  DateTime? date,
  bool? closed,
  String? useremail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'token': token,
      'ref': ref,
      'image': image,
      'documentid': documentid,
      'Document': document,
      'approved': approved,
      'seen': seen,
      'date': date,
      'closed': closed,
      'useremail': useremail,
    }.withoutNulls,
  );

  return firestoreData;
}

class VerificationRecordDocumentEquality
    implements Equality<VerificationRecord> {
  const VerificationRecordDocumentEquality();

  @override
  bool equals(VerificationRecord? e1, VerificationRecord? e2) {
    return e1?.token == e2?.token &&
        e1?.ref == e2?.ref &&
        e1?.image == e2?.image &&
        e1?.documentid == e2?.documentid &&
        e1?.document == e2?.document &&
        e1?.approved == e2?.approved &&
        e1?.seen == e2?.seen &&
        e1?.date == e2?.date &&
        e1?.closed == e2?.closed &&
        e1?.useremail == e2?.useremail;
  }

  @override
  int hash(VerificationRecord? e) => const ListEquality().hash([
        e?.token,
        e?.ref,
        e?.image,
        e?.documentid,
        e?.document,
        e?.approved,
        e?.seen,
        e?.date,
        e?.closed,
        e?.useremail
      ]);

  @override
  bool isValidKey(Object? o) => o is VerificationRecord;
}

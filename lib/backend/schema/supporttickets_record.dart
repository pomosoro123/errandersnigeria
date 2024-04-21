import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SupportticketsRecord extends FirestoreRecord {
  SupportticketsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "updatedDate" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "ticketAdmin" field.
  String? _ticketAdmin;
  String get ticketAdmin => _ticketAdmin ?? '';
  bool hasTicketAdmin() => _ticketAdmin != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _updatedDate = snapshotData['updatedDate'] as DateTime?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _ticketAdmin = snapshotData['ticketAdmin'] as String?;
    _status = snapshotData['status'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supporttickets');

  static Stream<SupportticketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportticketsRecord.fromSnapshot(s));

  static Future<SupportticketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportticketsRecord.fromSnapshot(s));

  static SupportticketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportticketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportticketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportticketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportticketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportticketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportticketsRecordData({
  DateTime? date,
  DateTime? updatedDate,
  DocumentReference? ref,
  String? title,
  String? message,
  DocumentReference? userref,
  String? ticketAdmin,
  String? status,
  String? image,
  String? name,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'updatedDate': updatedDate,
      'ref': ref,
      'title': title,
      'message': message,
      'userref': userref,
      'ticketAdmin': ticketAdmin,
      'status': status,
      'image': image,
      'name': name,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportticketsRecordDocumentEquality
    implements Equality<SupportticketsRecord> {
  const SupportticketsRecordDocumentEquality();

  @override
  bool equals(SupportticketsRecord? e1, SupportticketsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.ref == e2?.ref &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.userref == e2?.userref &&
        e1?.ticketAdmin == e2?.ticketAdmin &&
        e1?.status == e2?.status &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email;
  }

  @override
  int hash(SupportticketsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.updatedDate,
        e?.ref,
        e?.title,
        e?.message,
        e?.userref,
        e?.ticketAdmin,
        e?.status,
        e?.image,
        e?.name,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is SupportticketsRecord;
}

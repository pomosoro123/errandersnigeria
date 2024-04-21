import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "sent" field.
  bool? _sent;
  bool get sent => _sent ?? false;
  bool hasSent() => _sent != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  bool hasRead() => _read != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "jobref" field.
  DocumentReference? _jobref;
  DocumentReference? get jobref => _jobref;
  bool hasJobref() => _jobref != null;

  // "donationref" field.
  DocumentReference? _donationref;
  DocumentReference? get donationref => _donationref;
  bool hasDonationref() => _donationref != null;

  // "traderef" field.
  DocumentReference? _traderef;
  DocumentReference? get traderef => _traderef;
  bool hasTraderef() => _traderef != null;

  // "chatref" field.
  DocumentReference? _chatref;
  DocumentReference? get chatref => _chatref;
  bool hasChatref() => _chatref != null;

  // "chatMessageref" field.
  DocumentReference? _chatMessageref;
  DocumentReference? get chatMessageref => _chatMessageref;
  bool hasChatMessageref() => _chatMessageref != null;

  // "depositref" field.
  DocumentReference? _depositref;
  DocumentReference? get depositref => _depositref;
  bool hasDepositref() => _depositref != null;

  // "reciever" field.
  String? _reciever;
  String get reciever => _reciever ?? '';
  bool hasReciever() => _reciever != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _body = snapshotData['body'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _sent = snapshotData['sent'] as bool?;
    _read = snapshotData['read'] as bool?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _image = snapshotData['image'] as String?;
    _jobref = snapshotData['jobref'] as DocumentReference?;
    _donationref = snapshotData['donationref'] as DocumentReference?;
    _traderef = snapshotData['traderef'] as DocumentReference?;
    _chatref = snapshotData['chatref'] as DocumentReference?;
    _chatMessageref = snapshotData['chatMessageref'] as DocumentReference?;
    _depositref = snapshotData['depositref'] as DocumentReference?;
    _reciever = snapshotData['reciever'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? title,
  String? body,
  DateTime? date,
  bool? sent,
  bool? read,
  DocumentReference? sender,
  String? type,
  String? image,
  DocumentReference? jobref,
  DocumentReference? donationref,
  DocumentReference? traderef,
  DocumentReference? chatref,
  DocumentReference? chatMessageref,
  DocumentReference? depositref,
  String? reciever,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'body': body,
      'date': date,
      'sent': sent,
      'read': read,
      'sender': sender,
      'type': type,
      'image': image,
      'jobref': jobref,
      'donationref': donationref,
      'traderef': traderef,
      'chatref': chatref,
      'chatMessageref': chatMessageref,
      'depositref': depositref,
      'reciever': reciever,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.body == e2?.body &&
        e1?.date == e2?.date &&
        e1?.sent == e2?.sent &&
        e1?.read == e2?.read &&
        e1?.sender == e2?.sender &&
        e1?.type == e2?.type &&
        e1?.image == e2?.image &&
        e1?.jobref == e2?.jobref &&
        e1?.donationref == e2?.donationref &&
        e1?.traderef == e2?.traderef &&
        e1?.chatref == e2?.chatref &&
        e1?.chatMessageref == e2?.chatMessageref &&
        e1?.depositref == e2?.depositref &&
        e1?.reciever == e2?.reciever;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.body,
        e?.date,
        e?.sent,
        e?.read,
        e?.sender,
        e?.type,
        e?.image,
        e?.jobref,
        e?.donationref,
        e?.traderef,
        e?.chatref,
        e?.chatMessageref,
        e?.depositref,
        e?.reciever
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}

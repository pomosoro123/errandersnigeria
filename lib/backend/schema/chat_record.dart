import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "receiver" field.
  DocumentReference? _receiver;
  DocumentReference? get receiver => _receiver;
  bool hasReceiver() => _receiver != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "recieverimage" field.
  String? _recieverimage;
  String get recieverimage => _recieverimage ?? '';
  bool hasRecieverimage() => _recieverimage != null;

  // "recieverEmail" field.
  String? _recieverEmail;
  String get recieverEmail => _recieverEmail ?? '';
  bool hasRecieverEmail() => _recieverEmail != null;

  // "outputusers" field.
  List<DocumentReference>? _outputusers;
  List<DocumentReference> get outputusers => _outputusers ?? const [];
  bool hasOutputusers() => _outputusers != null;

  // "ref" field.
  String? _ref;
  String get ref => _ref ?? '';
  bool hasRef() => _ref != null;

  void _initializeFields() {
    _sender = snapshotData['sender'] as DocumentReference?;
    _receiver = snapshotData['receiver'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _name = snapshotData['Name'] as String?;
    _recieverimage = snapshotData['recieverimage'] as String?;
    _recieverEmail = snapshotData['recieverEmail'] as String?;
    _outputusers = getDataList(snapshotData['outputusers']);
    _ref = snapshotData['ref'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  DocumentReference? sender,
  DocumentReference? receiver,
  DateTime? date,
  String? name,
  String? recieverimage,
  String? recieverEmail,
  String? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender': sender,
      'receiver': receiver,
      'date': date,
      'Name': name,
      'recieverimage': recieverimage,
      'recieverEmail': recieverEmail,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sender == e2?.sender &&
        e1?.receiver == e2?.receiver &&
        e1?.date == e2?.date &&
        e1?.name == e2?.name &&
        e1?.recieverimage == e2?.recieverimage &&
        e1?.recieverEmail == e2?.recieverEmail &&
        listEquality.equals(e1?.outputusers, e2?.outputusers) &&
        e1?.ref == e2?.ref;
  }

  @override
  int hash(ChatRecord? e) => const ListEquality().hash([
        e?.sender,
        e?.receiver,
        e?.date,
        e?.name,
        e?.recieverimage,
        e?.recieverEmail,
        e?.outputusers,
        e?.ref
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}

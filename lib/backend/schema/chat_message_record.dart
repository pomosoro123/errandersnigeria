import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatMessageRecord extends FirestoreRecord {
  ChatMessageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "recciever" field.
  String? _recciever;
  String get recciever => _recciever ?? '';
  bool hasRecciever() => _recciever != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "usersinvoled" field.
  List<DocumentReference>? _usersinvoled;
  List<DocumentReference> get usersinvoled => _usersinvoled ?? const [];
  bool hasUsersinvoled() => _usersinvoled != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _recciever = snapshotData['recciever'] as String?;
    _sender = snapshotData['sender'] as String?;
    _usersinvoled = getDataList(snapshotData['usersinvoled']);
    _image = snapshotData['image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chatMessage')
          : FirebaseFirestore.instance.collectionGroup('chatMessage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chatMessage').doc(id);

  static Stream<ChatMessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessageRecord.fromSnapshot(s));

  static Future<ChatMessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessageRecord.fromSnapshot(s));

  static ChatMessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessageRecordData({
  String? message,
  DateTime? time,
  String? recciever,
  String? sender,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'time': time,
      'recciever': recciever,
      'sender': sender,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessageRecordDocumentEquality implements Equality<ChatMessageRecord> {
  const ChatMessageRecordDocumentEquality();

  @override
  bool equals(ChatMessageRecord? e1, ChatMessageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.message == e2?.message &&
        e1?.time == e2?.time &&
        e1?.recciever == e2?.recciever &&
        e1?.sender == e2?.sender &&
        listEquality.equals(e1?.usersinvoled, e2?.usersinvoled) &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ChatMessageRecord? e) => const ListEquality().hash([
        e?.message,
        e?.time,
        e?.recciever,
        e?.sender,
        e?.usersinvoled,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatMessageRecord;
}

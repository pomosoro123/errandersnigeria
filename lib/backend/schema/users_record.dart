import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "nin" field.
  String? _nin;
  String get nin => _nin ?? '';
  bool hasNin() => _nin != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "blocked" field.
  bool? _blocked;
  bool get blocked => _blocked ?? false;
  bool hasBlocked() => _blocked != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "adminref" field.
  DocumentReference? _adminref;
  DocumentReference? get adminref => _adminref;
  bool hasAdminref() => _adminref != null;

  // "banktype" field.
  String? _banktype;
  String get banktype => _banktype ?? '';
  bool hasBanktype() => _banktype != null;

  // "bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "bankno" field.
  String? _bankno;
  String get bankno => _bankno ?? '';
  bool hasBankno() => _bankno != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  bool hasRating() => _rating != null;

  // "documentimage" field.
  String? _documentimage;
  String get documentimage => _documentimage ?? '';
  bool hasDocumentimage() => _documentimage != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  // "UnderReview" field.
  bool? _underReview;
  bool get underReview => _underReview ?? false;
  bool hasUnderReview() => _underReview != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "quota" field.
  int? _quota;
  int get quota => _quota ?? 0;
  bool hasQuota() => _quota != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nin = snapshotData['nin'] as String?;
    _address = snapshotData['address'] as String?;
    _state = snapshotData['state'] as String?;
    _blocked = snapshotData['blocked'] as bool?;
    _type = snapshotData['type'] as String?;
    _admin = snapshotData['admin'] as bool?;
    _adminref = snapshotData['adminref'] as DocumentReference?;
    _banktype = snapshotData['banktype'] as String?;
    _bankname = snapshotData['bankname'] as String?;
    _bankno = snapshotData['bankno'] as String?;
    _rating = snapshotData['rating'] as String?;
    _documentimage = snapshotData['documentimage'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _premium = snapshotData['premium'] as bool?;
    _underReview = snapshotData['UnderReview'] as bool?;
    _verified = snapshotData['verified'] as bool?;
    _quota = castToType<int>(snapshotData['quota']);
    _balance = castToType<double>(snapshotData['balance']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? nin,
  String? address,
  String? state,
  bool? blocked,
  String? type,
  bool? admin,
  DocumentReference? adminref,
  String? banktype,
  String? bankname,
  String? bankno,
  String? rating,
  String? documentimage,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  bool? premium,
  bool? underReview,
  bool? verified,
  int? quota,
  double? balance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'nin': nin,
      'address': address,
      'state': state,
      'blocked': blocked,
      'type': type,
      'admin': admin,
      'adminref': adminref,
      'banktype': banktype,
      'bankname': bankname,
      'bankno': bankno,
      'rating': rating,
      'documentimage': documentimage,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'premium': premium,
      'UnderReview': underReview,
      'verified': verified,
      'quota': quota,
      'balance': balance,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.nin == e2?.nin &&
        e1?.address == e2?.address &&
        e1?.state == e2?.state &&
        e1?.blocked == e2?.blocked &&
        e1?.type == e2?.type &&
        e1?.admin == e2?.admin &&
        e1?.adminref == e2?.adminref &&
        e1?.banktype == e2?.banktype &&
        e1?.bankname == e2?.bankname &&
        e1?.bankno == e2?.bankno &&
        e1?.rating == e2?.rating &&
        e1?.documentimage == e2?.documentimage &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.premium == e2?.premium &&
        e1?.underReview == e2?.underReview &&
        e1?.verified == e2?.verified &&
        e1?.quota == e2?.quota &&
        e1?.balance == e2?.balance;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.nin,
        e?.address,
        e?.state,
        e?.blocked,
        e?.type,
        e?.admin,
        e?.adminref,
        e?.banktype,
        e?.bankname,
        e?.bankno,
        e?.rating,
        e?.documentimage,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.premium,
        e?.underReview,
        e?.verified,
        e?.quota,
        e?.balance
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

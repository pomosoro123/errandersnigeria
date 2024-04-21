import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRecord extends FirestoreRecord {
  JobRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "salary" field.
  double? _salary;
  double get salary => _salary ?? 0.0;
  bool hasSalary() => _salary != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "postingDate" field.
  DateTime? _postingDate;
  DateTime? get postingDate => _postingDate;
  bool hasPostingDate() => _postingDate != null;

  // "dateApplied" field.
  DateTime? _dateApplied;
  DateTime? get dateApplied => _dateApplied;
  bool hasDateApplied() => _dateApplied != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "clientloc" field.
  String? _clientloc;
  String get clientloc => _clientloc ?? '';
  bool hasClientloc() => _clientloc != null;

  // "applicant" field.
  String? _applicant;
  String get applicant => _applicant ?? '';
  bool hasApplicant() => _applicant != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "clientname" field.
  String? _clientname;
  String get clientname => _clientname ?? '';
  bool hasClientname() => _clientname != null;

  // "budget" field.
  String? _budget;
  String get budget => _budget ?? '';
  bool hasBudget() => _budget != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "clientemail" field.
  String? _clientemail;
  String get clientemail => _clientemail ?? '';
  bool hasClientemail() => _clientemail != null;

  // "applicants" field.
  List<String>? _applicants;
  List<String> get applicants => _applicants ?? const [];
  bool hasApplicants() => _applicants != null;

  // "applicantref" field.
  DocumentReference? _applicantref;
  DocumentReference? get applicantref => _applicantref;
  bool hasApplicantref() => _applicantref != null;

  // "funded" field.
  bool? _funded;
  bool get funded => _funded ?? false;
  bool hasFunded() => _funded != null;

  // "clientphone" field.
  String? _clientphone;
  String get clientphone => _clientphone ?? '';
  bool hasClientphone() => _clientphone != null;

  // "applicantsname" field.
  List<String>? _applicantsname;
  List<String> get applicantsname => _applicantsname ?? const [];
  bool hasApplicantsname() => _applicantsname != null;

  // "fundingamount" field.
  double? _fundingamount;
  double get fundingamount => _fundingamount ?? 0.0;
  bool hasFundingamount() => _fundingamount != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "clientreview" field.
  bool? _clientreview;
  bool get clientreview => _clientreview ?? false;
  bool hasClientreview() => _clientreview != null;

  // "errnaderreview" field.
  bool? _errnaderreview;
  bool get errnaderreview => _errnaderreview ?? false;
  bool hasErrnaderreview() => _errnaderreview != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _salary = castToType<double>(snapshotData['salary']);
    _company = snapshotData['company'] as String?;
    _location = snapshotData['location'] as String?;
    _postingDate = snapshotData['postingDate'] as DateTime?;
    _dateApplied = snapshotData['dateApplied'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _clientloc = snapshotData['clientloc'] as String?;
    _applicant = snapshotData['applicant'] as String?;
    _category = snapshotData['category'] as String?;
    _duration = snapshotData['duration'] as String?;
    _image = snapshotData['image'] as String?;
    _clientname = snapshotData['clientname'] as String?;
    _budget = snapshotData['budget'] as String?;
    _state = snapshotData['state'] as String?;
    _clientemail = snapshotData['clientemail'] as String?;
    _applicants = getDataList(snapshotData['applicants']);
    _applicantref = snapshotData['applicantref'] as DocumentReference?;
    _funded = snapshotData['funded'] as bool?;
    _clientphone = snapshotData['clientphone'] as String?;
    _applicantsname = getDataList(snapshotData['applicantsname']);
    _fundingamount = castToType<double>(snapshotData['fundingamount']);
    _completed = snapshotData['completed'] as bool?;
    _clientreview = snapshotData['clientreview'] as bool?;
    _errnaderreview = snapshotData['errnaderreview'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job');

  static Stream<JobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRecord.fromSnapshot(s));

  static Future<JobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRecord.fromSnapshot(s));

  static JobRecord fromSnapshot(DocumentSnapshot snapshot) => JobRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRecordData({
  String? title,
  String? description,
  double? salary,
  String? company,
  String? location,
  DateTime? postingDate,
  DateTime? dateApplied,
  String? status,
  String? clientloc,
  String? applicant,
  String? category,
  String? duration,
  String? image,
  String? clientname,
  String? budget,
  String? state,
  String? clientemail,
  DocumentReference? applicantref,
  bool? funded,
  String? clientphone,
  double? fundingamount,
  bool? completed,
  bool? clientreview,
  bool? errnaderreview,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'salary': salary,
      'company': company,
      'location': location,
      'postingDate': postingDate,
      'dateApplied': dateApplied,
      'status': status,
      'clientloc': clientloc,
      'applicant': applicant,
      'category': category,
      'duration': duration,
      'image': image,
      'clientname': clientname,
      'budget': budget,
      'state': state,
      'clientemail': clientemail,
      'applicantref': applicantref,
      'funded': funded,
      'clientphone': clientphone,
      'fundingamount': fundingamount,
      'completed': completed,
      'clientreview': clientreview,
      'errnaderreview': errnaderreview,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRecordDocumentEquality implements Equality<JobRecord> {
  const JobRecordDocumentEquality();

  @override
  bool equals(JobRecord? e1, JobRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.salary == e2?.salary &&
        e1?.company == e2?.company &&
        e1?.location == e2?.location &&
        e1?.postingDate == e2?.postingDate &&
        e1?.dateApplied == e2?.dateApplied &&
        e1?.status == e2?.status &&
        e1?.clientloc == e2?.clientloc &&
        e1?.applicant == e2?.applicant &&
        e1?.category == e2?.category &&
        e1?.duration == e2?.duration &&
        e1?.image == e2?.image &&
        e1?.clientname == e2?.clientname &&
        e1?.budget == e2?.budget &&
        e1?.state == e2?.state &&
        e1?.clientemail == e2?.clientemail &&
        listEquality.equals(e1?.applicants, e2?.applicants) &&
        e1?.applicantref == e2?.applicantref &&
        e1?.funded == e2?.funded &&
        e1?.clientphone == e2?.clientphone &&
        listEquality.equals(e1?.applicantsname, e2?.applicantsname) &&
        e1?.fundingamount == e2?.fundingamount &&
        e1?.completed == e2?.completed &&
        e1?.clientreview == e2?.clientreview &&
        e1?.errnaderreview == e2?.errnaderreview;
  }

  @override
  int hash(JobRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.salary,
        e?.company,
        e?.location,
        e?.postingDate,
        e?.dateApplied,
        e?.status,
        e?.clientloc,
        e?.applicant,
        e?.category,
        e?.duration,
        e?.image,
        e?.clientname,
        e?.budget,
        e?.state,
        e?.clientemail,
        e?.applicants,
        e?.applicantref,
        e?.funded,
        e?.clientphone,
        e?.applicantsname,
        e?.fundingamount,
        e?.completed,
        e?.clientreview,
        e?.errnaderreview
      ]);

  @override
  bool isValidKey(Object? o) => o is JobRecord;
}

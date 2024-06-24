import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "driving_license_number" field.
  String? _drivingLicenseNumber;
  String get drivingLicenseNumber => _drivingLicenseNumber ?? '';
  bool hasDrivingLicenseNumber() => _drivingLicenseNumber != null;

  // "license_front_photo" field.
  String? _licenseFrontPhoto;
  String get licenseFrontPhoto => _licenseFrontPhoto ?? '';
  bool hasLicenseFrontPhoto() => _licenseFrontPhoto != null;

  // "license_back_photo" field.
  String? _licenseBackPhoto;
  String get licenseBackPhoto => _licenseBackPhoto ?? '';
  bool hasLicenseBackPhoto() => _licenseBackPhoto != null;

  // "aadhar_no" field.
  String? _aadharNo;
  String get aadharNo => _aadharNo ?? '';
  bool hasAadharNo() => _aadharNo != null;

  // "user_current_location" field.
  LatLng? _userCurrentLocation;
  LatLng? get userCurrentLocation => _userCurrentLocation;
  bool hasUserCurrentLocation() => _userCurrentLocation != null;

  // "aadhar_front_photo" field.
  String? _aadharFrontPhoto;
  String get aadharFrontPhoto => _aadharFrontPhoto ?? '';
  bool hasAadharFrontPhoto() => _aadharFrontPhoto != null;

  // "aadhar_back_photo" field.
  String? _aadharBackPhoto;
  String get aadharBackPhoto => _aadharBackPhoto ?? '';
  bool hasAadharBackPhoto() => _aadharBackPhoto != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "DOB" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _type = snapshotData['type'] as String?;
    _gender = snapshotData['gender'] as String?;
    _drivingLicenseNumber = snapshotData['driving_license_number'] as String?;
    _licenseFrontPhoto = snapshotData['license_front_photo'] as String?;
    _licenseBackPhoto = snapshotData['license_back_photo'] as String?;
    _aadharNo = snapshotData['aadhar_no'] as String?;
    _userCurrentLocation = snapshotData['user_current_location'] as LatLng?;
    _aadharFrontPhoto = snapshotData['aadhar_front_photo'] as String?;
    _aadharBackPhoto = snapshotData['aadhar_back_photo'] as String?;
    _address = snapshotData['address'] as String?;
    _dob = snapshotData['DOB'] as String?;
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
  String? type,
  String? gender,
  String? drivingLicenseNumber,
  String? licenseFrontPhoto,
  String? licenseBackPhoto,
  String? aadharNo,
  LatLng? userCurrentLocation,
  String? aadharFrontPhoto,
  String? aadharBackPhoto,
  String? address,
  String? dob,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'type': type,
      'gender': gender,
      'driving_license_number': drivingLicenseNumber,
      'license_front_photo': licenseFrontPhoto,
      'license_back_photo': licenseBackPhoto,
      'aadhar_no': aadharNo,
      'user_current_location': userCurrentLocation,
      'aadhar_front_photo': aadharFrontPhoto,
      'aadhar_back_photo': aadharBackPhoto,
      'address': address,
      'DOB': dob,
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
        e1?.type == e2?.type &&
        e1?.gender == e2?.gender &&
        e1?.drivingLicenseNumber == e2?.drivingLicenseNumber &&
        e1?.licenseFrontPhoto == e2?.licenseFrontPhoto &&
        e1?.licenseBackPhoto == e2?.licenseBackPhoto &&
        e1?.aadharNo == e2?.aadharNo &&
        e1?.userCurrentLocation == e2?.userCurrentLocation &&
        e1?.aadharFrontPhoto == e2?.aadharFrontPhoto &&
        e1?.aadharBackPhoto == e2?.aadharBackPhoto &&
        e1?.address == e2?.address &&
        e1?.dob == e2?.dob;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.type,
        e?.gender,
        e?.drivingLicenseNumber,
        e?.licenseFrontPhoto,
        e?.licenseBackPhoto,
        e?.aadharNo,
        e?.userCurrentLocation,
        e?.aadharFrontPhoto,
        e?.aadharBackPhoto,
        e?.address,
        e?.dob
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

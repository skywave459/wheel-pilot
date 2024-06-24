import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidesRecord extends FirestoreRecord {
  RidesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_uid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "driver_uid" field.
  String? _driverUid;
  String get driverUid => _driverUid ?? '';
  bool hasDriverUid() => _driverUid != null;

  // "destination_location" field.
  LatLng? _destinationLocation;
  LatLng? get destinationLocation => _destinationLocation;
  bool hasDestinationLocation() => _destinationLocation != null;

  // "destination_address" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  bool hasDestinationAddress() => _destinationAddress != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "is_driver_assigned" field.
  bool? _isDriverAssigned;
  bool get isDriverAssigned => _isDriverAssigned ?? false;
  bool hasIsDriverAssigned() => _isDriverAssigned != null;

  // "ride_completed" field.
  bool? _rideCompleted;
  bool get rideCompleted => _rideCompleted ?? false;
  bool hasRideCompleted() => _rideCompleted != null;

  // "ride_id" field.
  String? _rideId;
  String get rideId => _rideId ?? '';
  bool hasRideId() => _rideId != null;

  // "driver_phoneNumber" field.
  String? _driverPhoneNumber;
  String get driverPhoneNumber => _driverPhoneNumber ?? '';
  bool hasDriverPhoneNumber() => _driverPhoneNumber != null;

  // "seeker_phoneNumber" field.
  String? _seekerPhoneNumber;
  String get seekerPhoneNumber => _seekerPhoneNumber ?? '';
  bool hasSeekerPhoneNumber() => _seekerPhoneNumber != null;

  // "pickup_location" field.
  LatLng? _pickupLocation;
  LatLng? get pickupLocation => _pickupLocation;
  bool hasPickupLocation() => _pickupLocation != null;

  // "pickup_locationName" field.
  String? _pickupLocationName;
  String get pickupLocationName => _pickupLocationName ?? '';
  bool hasPickupLocationName() => _pickupLocationName != null;

  // "ride_requestedTime" field.
  DateTime? _rideRequestedTime;
  DateTime? get rideRequestedTime => _rideRequestedTime;
  bool hasRideRequestedTime() => _rideRequestedTime != null;

  // "pickup_time" field.
  String? _pickupTime;
  String get pickupTime => _pickupTime ?? '';
  bool hasPickupTime() => _pickupTime != null;

  // "ride_hours" field.
  String? _rideHours;
  String get rideHours => _rideHours ?? '';
  bool hasRideHours() => _rideHours != null;

  // "total_fare" field.
  String? _totalFare;
  String get totalFare => _totalFare ?? '';
  bool hasTotalFare() => _totalFare != null;

  // "nearby_drivers" field.
  List<String>? _nearbyDrivers;
  List<String> get nearbyDrivers => _nearbyDrivers ?? const [];
  bool hasNearbyDrivers() => _nearbyDrivers != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  void _initializeFields() {
    _userUid = snapshotData['user_uid'] as String?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _driverUid = snapshotData['driver_uid'] as String?;
    _destinationLocation = snapshotData['destination_location'] as LatLng?;
    _destinationAddress = snapshotData['destination_address'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _driverName = snapshotData['driver_name'] as String?;
    _isDriverAssigned = snapshotData['is_driver_assigned'] as bool?;
    _rideCompleted = snapshotData['ride_completed'] as bool?;
    _rideId = snapshotData['ride_id'] as String?;
    _driverPhoneNumber = snapshotData['driver_phoneNumber'] as String?;
    _seekerPhoneNumber = snapshotData['seeker_phoneNumber'] as String?;
    _pickupLocation = snapshotData['pickup_location'] as LatLng?;
    _pickupLocationName = snapshotData['pickup_locationName'] as String?;
    _rideRequestedTime = snapshotData['ride_requestedTime'] as DateTime?;
    _pickupTime = snapshotData['pickup_time'] as String?;
    _rideHours = snapshotData['ride_hours'] as String?;
    _totalFare = snapshotData['total_fare'] as String?;
    _nearbyDrivers = getDataList(snapshotData['nearby_drivers']);
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rides');

  static Stream<RidesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidesRecord.fromSnapshot(s));

  static Future<RidesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidesRecord.fromSnapshot(s));

  static RidesRecord fromSnapshot(DocumentSnapshot snapshot) => RidesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidesRecordData({
  String? userUid,
  LatLng? driverLocation,
  String? driverUid,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userAddress,
  String? userName,
  String? driverName,
  bool? isDriverAssigned,
  bool? rideCompleted,
  String? rideId,
  String? driverPhoneNumber,
  String? seekerPhoneNumber,
  LatLng? pickupLocation,
  String? pickupLocationName,
  DateTime? rideRequestedTime,
  String? pickupTime,
  String? rideHours,
  String? totalFare,
  DateTime? lastUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_uid': userUid,
      'driver_location': driverLocation,
      'driver_uid': driverUid,
      'destination_location': destinationLocation,
      'destination_address': destinationAddress,
      'user_address': userAddress,
      'user_name': userName,
      'driver_name': driverName,
      'is_driver_assigned': isDriverAssigned,
      'ride_completed': rideCompleted,
      'ride_id': rideId,
      'driver_phoneNumber': driverPhoneNumber,
      'seeker_phoneNumber': seekerPhoneNumber,
      'pickup_location': pickupLocation,
      'pickup_locationName': pickupLocationName,
      'ride_requestedTime': rideRequestedTime,
      'pickup_time': pickupTime,
      'ride_hours': rideHours,
      'total_fare': totalFare,
      'last_updated': lastUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidesRecordDocumentEquality implements Equality<RidesRecord> {
  const RidesRecordDocumentEquality();

  @override
  bool equals(RidesRecord? e1, RidesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userUid == e2?.userUid &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.driverUid == e2?.driverUid &&
        e1?.destinationLocation == e2?.destinationLocation &&
        e1?.destinationAddress == e2?.destinationAddress &&
        e1?.userAddress == e2?.userAddress &&
        e1?.userName == e2?.userName &&
        e1?.driverName == e2?.driverName &&
        e1?.isDriverAssigned == e2?.isDriverAssigned &&
        e1?.rideCompleted == e2?.rideCompleted &&
        e1?.rideId == e2?.rideId &&
        e1?.driverPhoneNumber == e2?.driverPhoneNumber &&
        e1?.seekerPhoneNumber == e2?.seekerPhoneNumber &&
        e1?.pickupLocation == e2?.pickupLocation &&
        e1?.pickupLocationName == e2?.pickupLocationName &&
        e1?.rideRequestedTime == e2?.rideRequestedTime &&
        e1?.pickupTime == e2?.pickupTime &&
        e1?.rideHours == e2?.rideHours &&
        e1?.totalFare == e2?.totalFare &&
        listEquality.equals(e1?.nearbyDrivers, e2?.nearbyDrivers) &&
        e1?.lastUpdated == e2?.lastUpdated;
  }

  @override
  int hash(RidesRecord? e) => const ListEquality().hash([
        e?.userUid,
        e?.driverLocation,
        e?.driverUid,
        e?.destinationLocation,
        e?.destinationAddress,
        e?.userAddress,
        e?.userName,
        e?.driverName,
        e?.isDriverAssigned,
        e?.rideCompleted,
        e?.rideId,
        e?.driverPhoneNumber,
        e?.seekerPhoneNumber,
        e?.pickupLocation,
        e?.pickupLocationName,
        e?.rideRequestedTime,
        e?.pickupTime,
        e?.rideHours,
        e?.totalFare,
        e?.nearbyDrivers,
        e?.lastUpdated
      ]);

  @override
  bool isValidKey(Object? o) => o is RidesRecord;
}

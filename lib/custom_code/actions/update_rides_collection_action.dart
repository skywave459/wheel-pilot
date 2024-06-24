// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

// Action: updateRidesCollectionAction
// Arguments:
// - pickupLocation: LatLng
// - radiusInKm: double
// - rideId: String (new argument)
Future<void> updateRidesCollectionAction(
    LatLng pickupLocation, double radiusInKm, String rideId) async {
  var collectionReference = FirebaseFirestore.instance.collection('users');

  // Example: Query users within a radius from the pickup location
  var querySnapshot = await collectionReference
      .where('user_current_location', isGreaterThan: {
        'latitude': pickupLocation.latitude - (0.014 * radiusInKm),
        'longitude': pickupLocation.longitude - (0.014 * radiusInKm),
      })
      .where('user_current_location', isLessThan: {
        'latitude': pickupLocation.latitude + (0.014 * radiusInKm),
        'longitude': pickupLocation.longitude + (0.014 * radiusInKm),
      })
      .where('type', isEqualTo: 'Driver')
      .get();

  // Extract driver IDs from query results
  List<String> driverIds = querySnapshot.docs.map((doc) => doc.id).toList();

  // Update Firestore document with nearby drivers using the provided rideId
  var rideReference =
      FirebaseFirestore.instance.collection('rides').doc(rideId);
  await rideReference.update({
    'nearby_drivers': driverIds,
    'last_updated': Timestamp.now(),
  });
}

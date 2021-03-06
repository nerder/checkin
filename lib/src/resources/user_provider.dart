// @dart=2.9

import 'dart:async';
import 'dart:io';

import 'package:checkin/src/models/grade.dart';
import 'package:checkin/src/models/master.dart';
import 'package:checkin/src/models/user.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pub_semver/pub_semver.dart';

import 'local_storage_provider.dart';

class UserProvider implements UserRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  LocalStorageProvider _localStorageProvider = LocalStorageProvider();

  static const String path = 'users';

  @override
  Stream<User> getUser() => _localStorageProvider.getUser();

  @override
  Stream<User> subscribeToUser(String email) {
    return _firestore
        .collection(path)
        .doc(email)
        .snapshots()
        .where((snapshot) => snapshot.exists)
        .map((user) => User.fromJson(user.data())
            .copyWith(birthday: (user.data()["birthday"] as Timestamp)?.toDate()))
        .map((user) {
      _localStorageProvider.setUser(user);
      return user;
    });
  }

  Stream<User> getUserByEmail(String email) => _firestore
      .collection(path)
      .doc(email)
      .snapshots()
      .where((snapshot) => snapshot.exists)
      .map((user) => User.fromJson(user.data()));

  Stream<List<Master>> retrieveAvailableMasters(String gymId) => _firestore
      .collection(path)
      .where("isOwner", isEqualTo: true)
      .where("selectedGymId", isEqualTo: gymId)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => Master.fromJson(doc.data())).toList());

  Future<void> createUser(User newUser) async {
    var userData = {
      'name': newUser.name,
      'email': newUser.email,
      'imageUrl': newUser.imageUrl,
    };

    await _firestore.collection(path).doc(newUser.email).set(userData, SetOptions(merge: true));
  }

  Future<void> updateGrade(String userEmail, Grade newGrade) async {
    await _firestore.collection(path).doc(userEmail).update({"grade": newGrade.name.toLowerCase()});
  }

  Future<void> updateUserName(String userEmail, String newName) async {
    await _firestore.collection(path).doc(userEmail).update({"name": newName});
  }

  Future<void> updateUserFcmToken(String userEmail, String newFcmToken) async {
    var tokens = _firestore.collection(path).doc(userEmail).collection("tokens").doc(newFcmToken);

    await tokens.set({
      'token': newFcmToken,
      'createdAt': FieldValue.serverTimestamp(), // optional
      'platform': Platform.operatingSystem // optional
    });
  }

  Future<void> updateSelectedGymId(String userEmail, String newSelectedGym) async {
    await _firestore.collection(path).doc(userEmail).update({"selectedGymId": newSelectedGym});
  }

  Future<void> updateKnownGymIds(String userEmail, String newGymId) async {
    await _firestore.collection(path).doc(userEmail).update({
      "knownGymIds": FieldValue.arrayUnion([newGymId])
    });
  }

  Future<void> updateUserImageUrl(String userEmail, String newImageUrl) async {
    await _firestore.collection(path).doc(userEmail).update({"imageUrl": newImageUrl});
  }

  Future<void> updateUserAppVersion(String userEmail, Version newVersion) async {
    await _firestore.collection(path).doc(userEmail).update({"appVersion": newVersion.toString()});
  }

  @override
  Future<bool> isFirstLogin(String email) async {
    var documentSnapshot = await _firestore.collection(path).doc(email).get();
    return !documentSnapshot.exists;
  }

  @override
  Future<void> updateUserWeight(String userEmail, double newWeight) async {
    await _firestore.collection(path).doc(userEmail).update({"weight": newWeight});
  }

  @override
  Future<void> updateBirthday(String userEmail, DateTime newBirthday) async {
    await _firestore.collection(path).doc(userEmail).update({"birthday": newBirthday});
  }
}

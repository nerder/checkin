import 'package:checkin/src/models/grade.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'graduation_event.freezed.dart';

@freezed
class GraduationEvent with _$GraduationEvent {
  const factory GraduationEvent.graduationSystemUpdated({
    required double forNextLevel,
    required int attendedLessonsForGrade,
    required Grade currentGrade,
    required Grade nextGrade,
    required bool isVisible,
  }) = GraduationSystemUpdated;

  const factory GraduationEvent.graduate({required Grade newGrade}) = Graduate;

  const factory GraduationEvent.initializeGraduation() = InitializeGraduation;
}

import 'package:checkin/src/models/converters/grade_converter.dart';
import 'package:checkin/src/models/grade.dart';
import 'package:checkin/src/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attendee.g.dart';

@GradeConverter()
@JsonSerializable()
class Attendee extends Equatable {
  final String? name;
  final Grade? grade;
  final String imageUrl;
  // TODO: we should use some kind of id to perform this check not the email https://trello.com/c/j5sAVRXJ
  final String email;

  Attendee({
    required this.name,
    required this.grade,
    required this.imageUrl,
    required this.email,
  });

  @override
  List<Object?> get props => [name, grade, imageUrl, email];

  factory Attendee.fromUser(User user) {
    return Attendee(
      name: user.name,
      grade: user.grade,
      imageUrl: user.imageUrl,
      email: user.email,
    );
  }

  @override
  String toString() => 'Attendee{name: $name, grade: $grade, imageUrl: $imageUrl, email: $email}';

  factory Attendee.fromJson(Map<String, dynamic> json) => _$AttendeeFromJson(json);
  Map<String, dynamic> toJson() => _$AttendeeToJson(this);
}

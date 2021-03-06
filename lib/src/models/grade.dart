import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Grade {
  white,
  blue,
  purple,
  brown,
  black,
}

Widget _getIcon(String color) => Tab(
      icon: SvgPicture.asset(
        "assets/icons/$color-belt.svg",
      ),
    );

extension GradeExtension on Grade? {
  static final names = {
    Grade.white: 'White',
    Grade.blue: 'Blue',
    Grade.purple: 'Purple',
    Grade.brown: 'Brown',
    Grade.black: 'Black',
  };

  static final colors = {
    Grade.white: Colors.grey,
    Grade.blue: Colors.blueAccent,
    Grade.purple: Colors.deepPurple,
    Grade.brown: Colors.brown,
    Grade.black: Colors.black54,
  };

  static final descriptions = {
    Grade.white: 'Building a foundation',
    Grade.blue: 'Technical proficiency',
    Grade.purple: 'Game development and experimentation',
    Grade.brown: 'Thinking conceptually and strengthening weaknesses',
    Grade.black: 'Starting anew, teaching, and reflection',
  };

  static final icons = {
    Grade.white: _getIcon('white'),
    Grade.blue: _getIcon('blue'),
    Grade.purple: _getIcon('purple'),
    Grade.brown: _getIcon('brown'),
    Grade.black: _getIcon('black'),
  };

  String? get name => names[this!];
  String? get description => descriptions[this!];
  Widget? get icon => icons[this!];
  Color? get color => colors[this!];
}

extension GradeParser on String {
  Grade? toGrade() =>
      Grade.values.firstWhereOrNull((element) => element.name!.toLowerCase() == this.toLowerCase());
}

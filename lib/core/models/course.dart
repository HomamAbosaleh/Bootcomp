import 'package:flutter/material.dart';

import 'package:finance_app/core/models/topic.dart';

class Course {
  final IconData icon;
  final String title;
  final List<Topic> topics;

  const Course(this.icon, this.title, this.topics);
}
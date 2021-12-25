import 'package:hive_flutter/adapters.dart';
import 'package:task/models/task_label.dart';
import 'package:task/utils/hive_model_types.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
@HiveType(typeId: ModelHiveType.task)
class Task {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final DateTime createdAt;
  @HiveField(3)
  final DateTime lastModified;
  @HiveField(4)
  final DateTime deadline;
  @HiveField(5)
  final List<TaskLabel> labels;

  Task(
      {required this.title,
      required this.description,
      required this.createdAt,
      required this.lastModified,
      required this.deadline,
      required this.labels});
}

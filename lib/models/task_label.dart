import 'package:hive_flutter/adapters.dart';
import 'package:task/utils/hive_model_types.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
@HiveType(typeId: ModelHiveType.label)
class TaskLabel {
  final String label;
  final String color;

  TaskLabel({required this.label, required this.color});
}

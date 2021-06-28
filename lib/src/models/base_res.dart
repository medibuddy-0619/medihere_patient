import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_res.g.dart';

@JsonSerializable()
class BaseRes {
  String type;
  String message;
  dynamic data;

  BaseRes({@required this.type, @required this.message, this.data});

  factory BaseRes.fromJson(Map<String, dynamic> json) =>
      _$BaseResFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResToJson(this);

  @override
  String toString() {
    return 'BaseRes(type: $type, message: $message)';
  }
}

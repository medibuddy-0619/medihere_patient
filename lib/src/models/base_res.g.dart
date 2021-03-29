// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRes _$BaseResFromJson(Map<String, dynamic> json) {
  return BaseRes(
    type: json['type'] as String,
    message: json['message'] as String,
    data: json['data'],
  );
}

Map<String, dynamic> _$BaseResToJson(BaseRes instance) => <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'data': instance.data,
    };

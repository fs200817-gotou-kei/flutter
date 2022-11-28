// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_site.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkSite _$$_WorkSiteFromJson(Map<String, dynamic> json) => _$_WorkSite(
      id: json['id'] as int?,
      name: json['name'] as String?,
      subName: json['subName'] as String?,
      type: json['type'] as String?,
      staffName: json['staffName'] as String?,
      photo: _$JsonConverterFromJson<ByteData, ByteData>(
          json['photo'], const ByteDataConverter().fromJson),
      address: json['address'] as String?,
      status: json['status'] as String?,
      startAt: json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_WorkSiteToJson(_$_WorkSite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subName': instance.subName,
      'type': instance.type,
      'staffName': instance.staffName,
      'photo': _$JsonConverterToJson<ByteData, ByteData>(
          instance.photo, const ByteDataConverter().toJson),
      'address': instance.address,
      'status': instance.status,
      'startAt': instance.startAt?.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

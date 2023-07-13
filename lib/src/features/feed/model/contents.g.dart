// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contents _$ContentsFromJson(Map<String, dynamic> json) => Contents(
      id: json['id'] as String?,
      contentType: json['content_type'] as String?,
      contentMode: json['content_mode'] as String?,
      contentUrl: json['content_url'] as String?,
      contentSource: json['content_source'] == null
          ? null
          : ContentSource.fromJson(
              json['content_source'] as Map<String, dynamic>),
      isHeaderForThePlan: json['is_header_for_the_plan'] as bool?,
      isPrivate: json['is_private'] as bool?,
    );

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'id': instance.id,
      'content_type': instance.contentType,
      'content_mode': instance.contentMode,
      'content_url': instance.contentUrl,
      'content_source': instance.contentSource,
      'is_header_for_the_plan': instance.isHeaderForThePlan,
      'is_private': instance.isPrivate,
    };

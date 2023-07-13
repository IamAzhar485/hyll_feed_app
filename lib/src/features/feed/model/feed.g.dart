// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FeedData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'data': instance.data,
    };

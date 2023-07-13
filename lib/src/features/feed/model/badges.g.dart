// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badges.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badges _$BadgesFromJson(Map<String, dynamic> json) => Badges(
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      colorScheme: json['color_scheme'] as String?,
    );

Map<String, dynamic> _$BadgesToJson(Badges instance) => <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'color_scheme': instance.colorScheme,
    };

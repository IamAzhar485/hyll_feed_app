// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaLocation _$AreaLocationFromJson(Map<String, dynamic> json) => AreaLocation(
      name: json['name'] as String?,
      subtitle: json['subtitle'] as String?,
      distance: json['distance'],
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$AreaLocationToJson(AreaLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subtitle': instance.subtitle,
      'distance': instance.distance,
      'image_url': instance.imageUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facts _$FactsFromJson(Map<String, dynamic> json) => Facts(
      name: json['name'] as String?,
      value: json['value'] as String?,
      unit: json['unit'] as String?,
      iconUrl: json['icon_url'] as String?,
      displaySection: json['display_section'] as String?,
      factDefinitionId: json['fact_definition_id'] as int?,
      adventureFactId: json['adventure_fact_id'] as int?,
      backgroundColor: json['background_color'],
      iconColor: json['icon_color'],
      textColor: json['text_color'],
    );

Map<String, dynamic> _$FactsToJson(Facts instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'unit': instance.unit,
      'icon_url': instance.iconUrl,
      'display_section': instance.displaySection,
      'fact_definition_id': instance.factDefinitionId,
      'adventure_fact_id': instance.adventureFactId,
      'background_color': instance.backgroundColor,
      'icon_color': instance.iconColor,
      'text_color': instance.textColor,
    };

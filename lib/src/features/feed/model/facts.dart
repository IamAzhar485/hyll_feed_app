import 'package:json_annotation/json_annotation.dart';

part 'facts.g.dart';

@JsonSerializable()
class Facts {
  String? name;
  String? value;
  String? unit;
  @JsonKey(name: 'icon_url')
  String? iconUrl;
  @JsonKey(name: 'display_section')
  String? displaySection;
  @JsonKey(name: 'fact_definition_id')
  int? factDefinitionId;
  @JsonKey(name: 'adventure_fact_id')
  int? adventureFactId;
  @JsonKey(name: 'background_color')
  dynamic? backgroundColor;
  @JsonKey(name: 'icon_color')
  dynamic? iconColor;
  @JsonKey(name: 'text_color')
  dynamic? textColor;

  Facts({
    this.name,
    this.value,
    this.unit,
    this.iconUrl,
    this.displaySection,
    this.factDefinitionId,
    this.adventureFactId,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });

  factory Facts.fromJson(Map<String, dynamic> json) => _$FactsFromJson(json);

  Map<String, dynamic> toJson() => _$FactsToJson(this);
}

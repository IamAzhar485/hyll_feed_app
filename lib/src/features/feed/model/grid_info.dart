import 'package:json_annotation/json_annotation.dart';

part 'grid_info.g.dart';

@JsonSerializable()
class GridInfo {
  String? name;
  String? value;
  @JsonKey(name: 'icon_url')
  String? iconUrl;
  String? schema;

  GridInfo({
    this.name,
    this.value,
    this.iconUrl,
    this.schema,
  });

  factory GridInfo.fromJson(Map<String, dynamic> json) =>
      _$GridInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GridInfoToJson(this);
}

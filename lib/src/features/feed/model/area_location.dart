import 'package:json_annotation/json_annotation.dart';

part 'area_location.g.dart';

@JsonSerializable()
class AreaLocation {
  String? name;
  String? subtitle;
  dynamic? distance;
  @JsonKey(name: 'image_url')
  String? imageUrl;

  AreaLocation({
    this.name,
    this.subtitle,
    this.distance,
    this.imageUrl,
  });

  factory AreaLocation.fromJson(Map<String, dynamic> json) =>
      _$AreaLocationFromJson(json);

  Map<String, dynamic> toJson() => _$AreaLocationToJson(this);
}

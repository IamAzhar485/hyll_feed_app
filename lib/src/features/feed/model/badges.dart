import 'package:json_annotation/json_annotation.dart';

part 'badges.g.dart';

@JsonSerializable()
class Badges {
  String? title;
  String? icon;
  @JsonKey(name: 'color_scheme')
  String? colorScheme;

  Badges({
    this.title,
    this.icon,
    this.colorScheme,
  });

  factory Badges.fromJson(Map<String, dynamic> json) => _$BadgesFromJson(json);

  Map<String, dynamic> toJson() => _$BadgesToJson(this);
}

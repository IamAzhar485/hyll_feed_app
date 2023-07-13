import 'package:json_annotation/json_annotation.dart';

part 'content_source.g.dart';

@JsonSerializable()
class ContentSource {
  String? id;
  String? title;
  String? author;
  String? name;
  dynamic? icon;
  String? url;
  dynamic? creator;

  ContentSource({
    this.id,
    this.title,
    this.author,
    this.name,
    this.icon,
    this.url,
    this.creator,
  });

  factory ContentSource.fromJson(Map<String, dynamic> json) =>
      _$ContentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$ContentSourceToJson(this);
}

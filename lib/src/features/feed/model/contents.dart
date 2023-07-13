import 'package:hyll_app_task/src/features/feed/model/content_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contents.g.dart';

@JsonSerializable()
class Contents {
  String? id;
  @JsonKey(name: 'content_type')
  String? contentType;
  @JsonKey(name: 'content_mode')
  String? contentMode;
  @JsonKey(name: 'content_url')
  String? contentUrl;
  @JsonKey(name: 'content_source')
  ContentSource? contentSource;
  @JsonKey(name: 'is_header_for_the_plan')
  bool? isHeaderForThePlan;
  @JsonKey(name: 'is_private')
  bool? isPrivate;

  Contents({
    this.id,
    this.contentType,
    this.contentMode,
    this.contentUrl,
    this.contentSource,
    this.isHeaderForThePlan,
    this.isPrivate,
  });

  factory Contents.fromJson(Map<String, dynamic> json) =>
      _$ContentsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentsToJson(this);
}

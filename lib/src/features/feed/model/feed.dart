import 'package:hyll_app_task/src/features/feed/model/feed_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  int? count;
  String? next;
  String? previous;
  List<FeedData>? data;

  Feed({
    this.count,
    this.next,
    this.previous,
    this.data,
  });

  factory Feed.fromJson(Map<String,dynamic> json) => _$FeedFromJson(json);


  Map<String,dynamic> toJson() => _$FeedToJson(this);
}

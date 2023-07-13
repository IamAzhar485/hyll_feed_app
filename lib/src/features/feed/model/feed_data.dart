import 'package:hyll_app_task/src/features/feed/model/area_location.dart';
import 'package:hyll_app_task/src/features/feed/model/badges.dart';
import 'package:hyll_app_task/src/features/feed/model/contents.dart';
import 'package:hyll_app_task/src/features/feed/model/facts.dart';
import 'package:hyll_app_task/src/features/feed/model/grid_info.dart';
import 'package:hyll_app_task/src/features/feed/model/supply_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_data.g.dart';

@JsonSerializable()
class FeedData {
  int? id;
  int? pk;
  String? status;
  String? title;
  @JsonKey(name: 'area_location')
  AreaLocation? areaLocation;
  @JsonKey(name: 'starting_location')
  AreaLocation? startingLocation;
  List<String>? tags;
  String? activity;
  @JsonKey(name: 'activity_id')
  int? activityId;
  @JsonKey(name: 'primary_image')
  String? primaryImage;
  @JsonKey(name: 'primary_video')
  String? primaryVideo;
  String? thumbnail;
  @JsonKey(name: 'activity_icon')
  String? activityIcon;
  List<Badges>? badges;
  @JsonKey(name: 'bucket_list_count')
  int? bucketListCount;
  List<Contents>? contents;
  @JsonKey(name: 'supply_info')
  SupplyInfo? supplyInfo;
  @JsonKey(name: 'grid_info')
  List<GridInfo>? gridInfo;
  @JsonKey(name: 'ticket_optional')
  bool? ticketOptional;
  @JsonKey(name: 'booked_by_following')
  List<dynamic>? bookedByFollowing;
  @JsonKey(name: 'primary_description')
  String? primaryDescription;
  String? description;
  List<Facts>? facts;

  FeedData({
    this.id,
    this.pk,
    this.status,
    this.title,
    this.areaLocation,
    this.startingLocation,
    this.tags,
    this.activity,
    this.activityId,
    this.primaryImage,
    this.primaryVideo,
    this.thumbnail,
    this.activityIcon,
    this.badges,
    this.bucketListCount,
    this.contents,
    this.supplyInfo,
    this.gridInfo,
    this.ticketOptional,
    this.bookedByFollowing,
    this.primaryDescription,
    this.description,
    this.facts,
  });

  factory FeedData.fromJson(Map<String, dynamic> json) =>
      _$FeedDataFromJson(json);

  Map<String, dynamic> toJson() => _$FeedDataToJson(this);
}

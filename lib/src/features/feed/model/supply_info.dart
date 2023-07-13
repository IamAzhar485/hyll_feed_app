import 'package:json_annotation/json_annotation.dart';

part 'supply_info.g.dart';

@JsonSerializable()
class SupplyInfo {
  @JsonKey(name: 'supplier_name')
  String? supplierName;
  @JsonKey(name: 'price_title')
  String? priceTitle;
  @JsonKey(name: 'price_subtitle')
  String? priceSubtitle;
  @JsonKey(name: 'button_type')
  String? buttonType;
  String? link;

  SupplyInfo({
    this.supplierName,
    this.priceTitle,
    this.priceSubtitle,
    this.buttonType,
    this.link,
  });

  factory SupplyInfo.fromJson(Map<String, dynamic> json) =>
      _$SupplyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SupplyInfoToJson(this);
}

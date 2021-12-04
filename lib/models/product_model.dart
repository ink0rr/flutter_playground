import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    this.priceSign,
    this.currency,
    required this.imageLink,
    required this.productLink,
    required this.websiteLink,
    required this.description,
    this.rating,
    this.category,
    required this.productType,
    required this.createdAt,
    required this.updatedAt,
    required this.productColors,
  });

  final int id;
  final String brand;
  final String name;
  final String price;
  @JsonKey(name: 'price_sign')
  final String? priceSign;
  final String? currency;
  @JsonKey(name: 'image_link')
  final String imageLink;
  @JsonKey(name: 'product_link')
  final String productLink;
  @JsonKey(name: 'website_link')
  final String websiteLink;
  final String description;
  final double? rating;
  final String? category;
  @JsonKey(name: 'product_type')
  final String productType;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'product_colors')
  final List<ProductColorModel> productColors;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class ProductColorModel {
  ProductColorModel({
    this.hexValue,
    this.colourName,
  });

  @JsonKey(name: 'hex_value')
  final String? hexValue;
  @JsonKey(name: 'colour_name')
  final String? colourName;

  factory ProductColorModel.fromJson(Map<String, dynamic> json) =>
      _$ProductColorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductColorModelToJson(this);
}

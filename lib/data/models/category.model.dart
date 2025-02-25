import 'package:json_annotation/json_annotation.dart';

part 'category.model.g.dart';

@JsonSerializable()
class CategoryModel {
  final String title;
  final String key;
  final String url;
  final String type;
  final String image;
  final int? count;
  final String categoryType;

  CategoryModel({
    required this.title,
    required this.key,
    required this.url,
    required this.type,
    required this.image,
    this.count,
    required this.categoryType,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

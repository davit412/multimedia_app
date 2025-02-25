import 'package:json_annotation/json_annotation.dart';

part 'category.model.g.dart';

@JsonSerializable()
class CategoryModel {
  final String? title;
  final String? key;
  final String? url;
  final String? type;
  final String? image;
  final int? count;
  final String? categoryType;

  CategoryModel({
    this.title,
    this.key,
    this.url,
    this.type,
    this.image,
    this.count,
    this.categoryType,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

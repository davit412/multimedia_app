import 'package:json_annotation/json_annotation.dart';

part 'video.model.g.dart';

@JsonSerializable()
class VideoModel {
  final String? avatar;
  final String? avatar200;
  final String? avatar400;
  final String? createdAt;
  final String? email;
  final int? id;
  final String? name;
  final String? resumeDescription;
  final bool? resumeDownload;
  final int? resumeId;
  final String? resumeImage;
  final String? resumeName;
  final int? reviewCount;
  final int? reviewGeneralUser;
  final bool? save;
  final int? sharedCount;
  final String? slug;
  final bool? sponsored;
  final String? typeAudience;
  final List<String?>? typeAudiences;
  final String? video;
  final String? videoUrl;

  VideoModel({
    this.avatar,
    this.avatar200,
    this.avatar400,
    this.createdAt,
    this.email,
    this.id,
    this.name,
    this.resumeDescription,
    this.resumeDownload,
    this.resumeId,
    this.resumeImage,
    this.resumeName,
    this.reviewCount,
    this.reviewGeneralUser,
    this.save,
    this.sharedCount,
    this.slug,
    this.sponsored,
    this.typeAudience,
    this.typeAudiences,
    this.video,
    this.videoUrl,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
  Map<String?, dynamic> toJson() => _$VideoModelToJson(this);
}

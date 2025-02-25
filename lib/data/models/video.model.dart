import 'package:json_annotation/json_annotation.dart';

part 'video.model.g.dart';

@JsonSerializable()
class VideoModel {
  final String avatar;
  final String avatar200;
  final String avatar400;
  final String createdAt;
  final String email;
  final int id;
  final String name;
  final String resumeDescription;
  final bool resumeDownload;
  final int resumeId;
  final String resumeImage;
  final String resumeName;
  final int reviewCount;
  final int reviewGeneralUser;
  final bool save;
  final int sharedCount;
  final String slug;
  final bool sponsored;
  final String typeAudience;
  final List<String> typeAudiences;
  final String video;
  final String videoUrl;

  VideoModel({
    required this.avatar,
    required this.avatar200,
    required this.avatar400,
    required this.createdAt,
    required this.email,
    required this.id,
    required this.name,
    required this.resumeDescription,
    required this.resumeDownload,
    required this.resumeId,
    required this.resumeImage,
    required this.resumeName,
    required this.reviewCount,
    required this.reviewGeneralUser,
    required this.save,
    required this.sharedCount,
    required this.slug,
    required this.sponsored,
    required this.typeAudience,
    required this.typeAudiences,
    required this.video,
    required this.videoUrl,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}

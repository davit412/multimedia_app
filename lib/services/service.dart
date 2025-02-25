import 'package:flutter/material.dart';
import 'package:multimedia_app/data/models/category.model.dart';
import 'package:multimedia_app/data/models/video.model.dart';
import 'package:multimedia_app/data/repositories/repository.dart';
import 'package:stacked/stacked.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Service with ReactiveServiceMixin {
  final Repository repository;

  final categoriesValue = ReactiveValue<List<CategoryModel>>([]);
  final errorMessage = ReactiveValue<String?>(null);
  final categoriesDetailsValue = ReactiveValue<VideoModel?>(null);

  @factoryMethod
  Service(this.repository) {
    listenToReactiveValues([
      categoriesValue,
      errorMessage,
      categoriesDetailsValue,
    ]);
  }

  Future<dynamic> getCategories() async {
    try {
      final response = await repository.getCategories();
      if (response.body == null) return;
      final data = response.body['data'] as List;
      categoriesValue.value =
          data.map((json) => CategoryModel.fromJson(json)).toList();
    } catch (e) {
      errorMessage.value =
          'Estamos teniendo problemas, por favor intente más tarde';
      Dialog(
        child: Text(errorMessage.value ?? ''),
      );
    }
  }

  Future<dynamic> getCategoryDetails(String url) async {
    try {
      final response = await repository.getCategoryDetails(url);
      if (response.body == null) return;
      final data = response.body['data'] as List;
      categoriesDetailsValue.value = VideoModel.fromJson(data.first);
      debugPrint(
          'categoriesDetailsValue: ${categoriesDetailsValue.value?.name}');
    } catch (e) {
      errorMessage.value =
          'Estamos teniendo problemas, por favor intente más tarde';
      Dialog(
        child: Text(errorMessage.value ?? ''),
      );
    }
  }
}

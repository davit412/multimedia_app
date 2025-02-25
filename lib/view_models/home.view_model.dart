import 'package:flutter/material.dart';
import 'package:multimedia_app/data/models/category.model.dart';
import 'package:multimedia_app/data/models/video.model.dart';
import 'package:multimedia_app/services/service.dart';
import 'package:multimedia_app/utils/injectable_config.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _service = getIt<Service>();
  @override
  List<ReactiveServiceMixin> get reactiveServices => [
        _service,
      ];

  List<CategoryModel> get categories => _service.categoriesValue.value;

  HomeViewModel() {
    getCategories();
  }

  String? get errorMessage => _service.errorMessage.value;

  VideoModel? get video => _service.categoriesDetailsValue.value;

  Future<void> getCategories() async {
    setBusy(true);
    await _service.getCategories();
    notifyListeners();
    setBusy(false);
  }

  set errorMessage(String? value) => _service.errorMessage.value = value;

  Future<void> fetchCategoryDetails(
      BuildContext context, String fullUrl) async {
    setBusy(true);
    try {
      const baseUrl = 'https://data2.talentpitch.co/api/homeservice';
      final endpoint = fullUrl.replaceFirst(baseUrl, '');
      getCategoryDetails(context, endpoint);
    } catch (e) {
      errorMessage = 'Estamos teniendo problemas, por favor intente más tarde';
    }
    setBusy(false);
  }

  Future<void> getCategoryDetails(BuildContext context, String url) async {
    _service.getCategoryDetails(url).then((_) {
      goCategoryDetails(context);
    });
    notifyListeners();
  }

  void goCategoryDetails(BuildContext context) {
    Navigator.pushNamed(context, '/category-detail');
  }
}

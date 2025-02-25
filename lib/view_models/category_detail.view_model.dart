import 'package:multimedia_app/data/models/video.model.dart';
import 'package:multimedia_app/services/service.dart';
import 'package:multimedia_app/utils/injectable_config.dart';
import 'package:stacked/stacked.dart';

class CategoryDetailViewModel extends BaseViewModel {
  final _service = getIt<Service>();
  @override
  List<ReactiveServiceMixin> get reactiveServices => [
        _service,
      ];

  String? get errorMessage => _service.errorMessage.value;

  VideoModel? get video => _service.categoriesDetailsValue.value;
}

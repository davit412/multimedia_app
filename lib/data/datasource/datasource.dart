import 'package:chopper/chopper.dart';
import 'package:multimedia_app/data/models/category.model.dart';
import 'package:multimedia_app/data/models/video.model.dart';

part 'datasource.chopper.dart';

@ChopperApi()
abstract class Datasource extends ChopperService {
  @GET(path: '/categories-static-home')
  Future<Response<Map<String, dynamic>>> getCategories();

  static Datasource create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://data2.talentpitch.co/api/homeservice'),
      services: [
        _$Datasource(),
      ],
      converter: const JsonConverter(),
    );
    return _$Datasource(client);
  }
}

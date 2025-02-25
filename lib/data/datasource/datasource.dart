import 'package:chopper/chopper.dart';

part 'datasource.chopper.dart';

@ChopperApi()
abstract class Datasource extends ChopperService {
  @GET(path: '/categories-static-home')
  Future<Response<Map<String, dynamic>>> getCategories();

  @GET(path: '{url}')
  Future<Response<Map<String, dynamic>>> getCategoryDetails(
      @Path('url') String url);

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

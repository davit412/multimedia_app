import 'package:multimedia_app/data/datasource/datasource.dart';

class Repository {
  final Datasource _datasource;

  Repository(this._datasource);

  Future<dynamic> getCategories() => _datasource.getCategories();

  Future<dynamic> getCategoryDetails(String url) =>
      _datasource.getCategoryDetails(url);
}

import 'package:two_beer/models/beer.dart';

class BeerRepository {
  BeerRepository();

  Future<List<Beer>> fetchBeers() {
    // return this._dataStore.query(Beer.classType);
    return Future.delayed(const Duration(seconds: 1), () {
      return [];
    });
  }
}

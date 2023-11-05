// import 'package:danapay/feature/domain/entity/countries_entity.dart';
import 'package:dayapay/feature/domain/entity/countries_entity.dart';

abstract class ICountriesRepository {
  Future<List<CountriesEntity>> getCountries();
}

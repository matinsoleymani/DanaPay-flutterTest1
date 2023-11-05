// import 'package:danapay/feature/domain/entity/countries_entity.dart';
// import 'package:danapay/feature/domain/entity/repository/countries_repo.dart';

import 'package:dayapay/feature/domain/entity/countries_entity.dart';
import 'package:dayapay/feature/domain/entity/repository/countries_repo.dart';

class GetCountriesUsecase {
  final ICountriesRepository iCountriesRepository;

  GetCountriesUsecase(this.iCountriesRepository);

  Future<List<CountriesEntity>> getCountries() async {
    return await iCountriesRepository.getCountries();
  }
}

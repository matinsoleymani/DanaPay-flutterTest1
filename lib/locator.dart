// import 'package:danapay/feature/data/data_source/local/api_provider.dart';
// import 'package:danapay/feature/data/repository/countries_impl.dart';
// import 'package:danapay/feature/domain/entity/repository/countries_repo.dart';
// import 'package:danapay/feature/domain/entity/use%20case/countries_usecase.dart';
// import 'package:get_it/get_it.dart';

import 'package:dayapay/feature/data/data_source/local/api_provider.dart';
import 'package:dayapay/feature/data/repository/countries_impl.dart';
import 'package:dayapay/feature/domain/entity/repository/countries_repo.dart';
import 'package:dayapay/feature/domain/entity/use%20case/countries_usecase.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUp() async {
  locator.registerSingleton<ApiProviderCountries>(ApiProviderCountries());

//repo
  locator
      .registerSingleton<ICountriesRepository>(CountriesRepository(locator()));
//use case
  locator
      .registerSingleton<GetCountriesUsecase>(GetCountriesUsecase(locator()));
}

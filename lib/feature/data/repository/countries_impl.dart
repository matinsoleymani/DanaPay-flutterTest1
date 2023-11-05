// import 'package:danapay/feature/data/data_source/local/api_provider.dart';
// import 'package:danapay/feature/data/models/countries_model.dart';
// import 'package:danapay/feature/domain/entity/countries_entity.dart';
// import 'package:danapay/feature/domain/entity/repository/countries_repo.dart';
import 'package:dayapay/core/utils/home_screen_status.dart';
import 'package:dayapay/feature/data/data_source/local/api_provider.dart';
import 'package:dayapay/feature/data/models/countries_model.dart';
import 'package:dayapay/feature/domain/entity/countries_entity.dart';
import 'package:dayapay/feature/domain/entity/repository/countries_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CountriesRepository extends ICountriesRepository with ChangeNotifier {
  final ApiProviderCountries apiProviderCountries;

  CountriesRepository(this.apiProviderCountries);
  @override
  Future<List<CountriesEntity>> getCountries() async {
    try {
      Response response = await apiProviderCountries.getCountries();
      if (response.statusCode == 200) {
        List<CountriesEntity> countries = [];
        (response.data as List).forEach((element) {
          countries.add(Country.fromJson(element));
        });
        HomePageStatus.status = HomePageStatus.success;
        notifyListeners();
        return countries;
      } else {
        HomePageStatus.status = HomePageStatus.error;

        notifyListeners();

        throw Exception();
      }
    } catch (e) {
      HomePageStatus.status = HomePageStatus.networkErorr;

      notifyListeners();

      throw Exception();
    }
  }
}


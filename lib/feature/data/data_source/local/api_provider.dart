import 'package:dio/dio.dart';

class ApiProviderCountries {
  final Dio _dio = Dio();
//call api
  Future<dynamic> getCountries() async {
    Response response = await _dio.get('https://restcountries.com/v3.1/all');

    return response;
  }
}

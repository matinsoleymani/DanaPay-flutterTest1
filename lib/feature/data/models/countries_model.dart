import 'package:dayapay/feature/domain/entity/countries_entity.dart';

class Country extends CountriesEntity {
  Country({
    String? common,
    Languages? eng,
    String? official,
    // String? capital,
    String? region,
    String? subregion,
  }) : super(
          common: common,
          official: official,
          region: region,
          subregion: subregion,
          languages: eng,
        );

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
        common: json['name']['common'],
        official: json['name']['official'],
        region: json['region'],
        subregion: json['subregion'],
        // eng: json['lan']
        eng:  json['languages'] != null ? new Languages.fromJson(json['languages']) : null
        );
  }
}
class Languages {
	String? eng;

	Languages({this.eng});

	Languages.fromJson(Map<String, dynamic> json) {
		eng = json['eng'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['eng'] = this.eng;
		return data;
	}
}
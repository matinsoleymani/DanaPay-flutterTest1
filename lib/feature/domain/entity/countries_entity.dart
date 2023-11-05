// import 'package:danapay/feature/data/models/countries_model.dart';
// import 'package:equatable/equatable.dart';

import 'package:dayapay/feature/data/models/countries_model.dart';
import 'package:equatable/equatable.dart';

class CountriesEntity extends Equatable {
  // String? capital;
  String? common;
  String? official;
  String? region;
  String? subregion;
  Languages? languages;
  // Map<dynamic, String>? languages;

  CountriesEntity({
    // required this.capital,
    required this.common,
    required this.official,
    required this.region,
    required this.subregion,
     this.languages,
  });
  @override
  List<Object?> get props => [common, official, region, subregion, languages];
}

// class Country {
//   Name name;
//   List<String> tld;
//   String cca2;
//   String ccn3;
//   String cca3;
//   bool independent;
//   String status;
//   bool unMember;
//   Map<String, Currency> currencies;
//   Idd idd;
//   List<String> capital;
//   List<String> altSpellings;
//   String region;
//   String subregion;
//   Map<String, String> languages;
//   Translations translations;
//   List<double> latlng;
//   bool landlocked;
//   double area;
//   Demonyms demonyms;
//   String flag;
//   Maps maps;
//   int population;
//   String fifa;
//   Car car;
//   List<String> timezones;
//   List<String> continents;
//   Flags flags;
//   Map<String, dynamic> coatOfArms;
//   String startOfWeek;
//   CapitalInfo capitalInfo;
//   PostalCode postalCode;

//   Country({
//     required this.name,
//     required this.tld,
//     required this.cca2,
//     required this.ccn3,
//     required this.cca3,
//     required this.independent,
//     required this.status,
//     required this.unMember,
//     required this.currencies,
//     required this.idd,
//     required this.capital,
//     required this.altSpellings,
//     required this.region,
//     required this.subregion,
//     required this.languages,
//     required this.translations,
//     required this.latlng,
//     required this.landlocked,
//     required this.area,
//     required this.demonyms,
//     required this.flag,
//     required this.maps,
//     required this.population,
//     required this.fifa,
//     required this.car,
//     required this.timezones,
//     required this.continents,
//     required this.flags,
//     required this.coatOfArms,
//     required this.startOfWeek,
//     required this.capitalInfo,
//     required this.postalCode,
//   });

//   factory Country.fromJson(Map<String, dynamic> json) {
//     return Country(
//       name: Name.fromJson(json['name']),
//       tld: List<String>.from(json['tld']),
//       cca2: json['cca2'],
//       ccn3: json['ccn3'],
//       cca3: json['cca3'],
//       independent: json['independent'],
//       status: json['status'],
//       unMember: json['unMember'],
//       currencies: (json['currencies'] as Map<String, dynamic>).map((key, value) => MapEntry(key, Currency.fromJson(value)),

      
 
//     ), idd: Idd.fromJson(json['idd']),
//      capital: List<String>.from(json['capital']),
//       altSpellings:  List<String>.from(json['altSpellings']),
//        region: json['region'], subregion: json['subregion'],
// languages: Map<String, String>.from(json['languages']),
// translations: Translations.fromJson(json['translations']),
//  latlng: List<double>.from(json['latlng']),
//     landlocked: json['landlocked'],
//     area:  json['area'].toDouble(),
// demonyms: Demonyms.fromJson(json['demonyms']),
// flag: json['flag'],
// maps: Maps.fromJson(json['maps']),
// population: json['population'],
// fifa:  json['fifa'],
// car: Car.fromJson(json['car']),
// timezones: List<String>.from(json['timezones']),
// continents: List<String>.from(json['continents']),
// flags: Flags.fromJson(json['flags']),
// coatOfArms: Map<String, dynamic>.from(json['coatOfArms']),
// startOfWeek: json['startOfWeek'],
// capitalInfo: CapitalInfo.fromJson(json['capitalInfo']),
// postalCode: PostalCode.fromJson(json['postalCode']),

//     );
//   }
// }

// class Name {
//   String common;
//   String official;
//   Map<String, NameNative> nativeName;

//   Name({
//     required this.common,
//     required this.official,
//     required this.nativeName,
//   });

//   factory Name.fromJson(Map<String, dynamic> json) {
//     return Name(
//       common: json['common'],
//       official: json['official'],
//       nativeName: (json['nativeName'] as Map<String, dynamic>).map((key, value) => MapEntry(key, NameNative.fromJson(value)),
//     ));
//   }
// }

// class NameNative {
//   String common;
//   String official;

//   NameNative({
//     required this.common,
//     required this.official,
//   });

//   factory NameNative.fromJson(Map<String, dynamic> json) {
//     return NameNative(
//       common: json['common'],
//       official: json['official'],
//     );
//   }
// }

// class Currency {
//   String name;
//   String symbol;

//   Currency({
//     required this.name,
//     required this.symbol,
//   });

//   factory Currency.fromJson(Map<String, dynamic> json) {
//     return Currency(
//       name: json['name'],
//       symbol: json['symbol'],
//     );
//   }
// }

// class Idd {
//   String root;
//   List<String> suffixes;

//   Idd({
//     required this.root,
//     required this.suffixes,
//   });

//   factory Idd.fromJson(Map<String, dynamic> json) {
//     return Idd(
//       root: json['root'],
//       suffixes: List<String>.from(json['suffixes']),
//     );
//   }
// }

// class Translations {
//   Map<String, TranslationLanguage> translations;

//   Translations({
//     required this.translations,
//   });

//   factory Translations.fromJson(Map<String, dynamic> json) {
//     return Translations(
//       translations: (json as Map<String, dynamic>).map((key, value) => MapEntry(key, TranslationLanguage.fromJson(value)),
//     ));
//   }
// }

// class TranslationLanguage {
//   String official;
//   String common;

//   TranslationLanguage({
//     required this.official,
//     required this.common,
//   });

//   factory TranslationLanguage.fromJson(Map<String, dynamic> json) {
//     return TranslationLanguage(
//       official: json['official'],
//       common: json['common'],
//     );
//   }
// }

// class Demonyms {
//   Map<String, Demonym> demonyms;

//   Demonyms({
//     required this.demonyms,
//   });

//   factory Demonyms.fromJson(Map<String, dynamic> json) {
//     return Demonyms(
//       demonyms: (json as Map<String, dynamic>).map((key, value) => MapEntry(key, Demonym.fromJson(value)),
//     ));
//   }
// }

// class Demonym {
//   String f;
//   String m;

//   Demonym({
//     required this.f,
//     required this.m,
//   });

//   factory Demonym.fromJson(Map<String, dynamic> json) {
//     return Demonym(
//       f: json['f'],
//       m: json['m'],
//     );
//   }
// }

// class Maps {
//   String googleMaps;
//   String openStreetMaps;

//   Maps({
//     required this.googleMaps,
//     required this.openStreetMaps,
//   });

//   factory Maps.fromJson(Map<String, dynamic> json) {
//     return Maps(
//       googleMaps: json['googleMaps'],
//       openStreetMaps: json['openStreetMaps'],
//     );
//   }
// }

// class Car {
//   List<String> signs;
//   String side;

//   Car({
//     required this.signs,
//     required this.side,
//   });

//   factory Car.fromJson(Map<String, dynamic> json) {
//     return Car(
//       signs: List<String>.from(json['signs']),
//       side: json['side'],
//     );
//   }
// }
// class Flags {
//   String png;
//   String svg;

//   Flags({
//     required this.png,
//     required this.svg,
//   });

//   factory Flags.fromJson(Map<String, dynamic> json) {
//     return Flags(
//       png: json['png'],
//       svg: json['svg'],
//     );
//   }
// }

// class CapitalInfo {
//   List<double> latlng;

//   CapitalInfo({
//     required this.latlng,
//   });

//   factory CapitalInfo.fromJson(Map<String, dynamic> json) {
//     return CapitalInfo(
//       latlng: List<double>.from(json['latlng']),
//     );
//   }
// }

// class PostalCode {
//   String format;
//   String regex;

//   PostalCode({
//     required this.format,
//     required this.regex,
//   });

//   factory PostalCode.fromJson(Map<String, dynamic> json) {
//     return PostalCode(
//       format: json['format'],
//       regex: json['regex'],
//     );
//   }
// }
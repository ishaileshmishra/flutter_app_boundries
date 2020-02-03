import 'dart:collection';

class Country {
  final String name;
  final List topLevelDomain;
  final String alpha2Code;
  final String alpha3Code;
  final List callingCodes;
  final String capital;
  final List altSpellings;
  final String region;
  final String subregion;
  final int population;
  final String demonym;
  final double area;
  final List timezones;
  final List borders;
  final String nativeName;
  final String numericCode;
  final LinkedHashMap translations;
  final String flag;
  final String cioc;

  Country(
      this.name,
      this.topLevelDomain,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.population,
      this.demonym,
      this.area,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
      this.translations,
      this.flag,
      this.cioc);

  Country.fromJson(Map json)
      : name = json['name'],
        topLevelDomain = json['topLevelDomain'],
        alpha2Code = json['alpha2Code'],
        alpha3Code = json['alpha3Code'],
        callingCodes = json['callingCodes'],
        capital = json['capital'],
        altSpellings = json['altSpellings'],
        region = json['region'],
        subregion = json['subregion'],
        population = json['population'],
        demonym = json['demonym'],
        area = json['area'],
        timezones = json['timezones'],
        borders = json['borders'],
        nativeName = json['nativeName'],
        numericCode = json['numericCode'],
        translations = json['translations'],
        flag = json['flag'],
        cioc = json['cioc'];

  @override
  String toString() {
    return 'Country{name: $name, alpha2Code: $alpha2Code, alpha3Code: $alpha3Code, capital: $capital, region: $region, subregion: $subregion, '
        'population: $population, demonym: $demonym, area: $area, borders: $borders, nativeName: $nativeName, numericCode: $numericCode, '
        'translations: $translations, flag: $flag, cioc: $cioc}';
  }
}

import 'dart:collection';

class Country{

  final String name;
  //final List topLevelDomain;
  final String alpha2Code;
  final String alpha3Code;
  //final List callingCodes;
  final String capital;
  //final List altSpellings;
  final String region;
  final String subregion;
  final int population;
  //final List latlng;
  final String demonym;
  final double area;
  //final List timezones;
  //final List borders;
  final String nativeName;
  final String numericCode;
  final LinkedHashMap translations;
  final String flag;
  final String cioc;

  Country(this.name, this.alpha2Code, this.alpha3Code, this.capital,
      this.region, this.subregion, this.population, this.demonym, this.area,
      this.nativeName, this.numericCode, this.translations, this.flag,
      this.cioc);

  Country.fromJson(Map json)
      : name = json['name'],
        alpha2Code = json['alpha2Code'],
        alpha3Code = json['alpha3Code'],
        capital = json['capital'],
        region = json['region'],
        subregion = json['subregion'],
        population = json['population'],
        demonym = json['demonym'],
        area = json['area'],
        nativeName = json['nativeName'],
        numericCode = json['numericCode'],
        translations = json['translations'],
        flag = json['flag'],
        cioc = json['cioc'];

//      (this.name, this.alpha2Code, this.alpha3Code, this.capital,
//      this.region, this.subregion, this.population, this.demonym, this.area,
//      this.nativeName, this.numericCode, this.translations, this.flag,
//      this.cioc);

//  Country(this.name, this.topLevelDomain, this.alpha2Code, this.alpha3Code,
//      this.callingCodes, this.capital, this.altSpellings, this.region,
//      this.subregion, this.population, this.latlng, this.demonym, this.area,
//      this.timezones, this.borders, this.nativeName, this.numericCode,
//      this.translations, this.flag, this.cioc);





}
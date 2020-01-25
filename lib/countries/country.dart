class Country{

  final String name;
  final List topLevelDomain;
  final String alpha2Code;
  final String alpha3Code;
  final List callingCodes;
  final String capital;
  final List altSpellings;
  final String region;
  final String subregion;
  final String population;
  final List latlng;
  final String demonym;
  final String area;
  final List timezones;
  final List borders;
  final String nativeName;
  final String numericCode;
  final String translations;
  final String flag;
  final String cioc;

  Country(this.name, this.topLevelDomain, this.alpha2Code, this.alpha3Code,
      this.callingCodes, this.capital, this.altSpellings, this.region,
      this.subregion, this.population, this.latlng, this.demonym, this.area,
      this.timezones, this.borders, this.nativeName, this.numericCode,
      this.translations, this.flag, this.cioc);


  @override
  String toString() {
    return 'Country{name: $name, topLevelDomain: $topLevelDomain, alpha2Code: $alpha2Code, alpha3Code: $alpha3Code, callingCodes: $callingCodes, capital: $capital, altSpellings: $altSpellings, region: $region, subregion: $subregion, population: $population, latlng: $latlng, demonym: $demonym, area: $area, timezones: $timezones, borders: $borders, nativeName: $nativeName, numericCode: $numericCode, translations: $translations, flag: $flag, cioc: $cioc}';
  }


}
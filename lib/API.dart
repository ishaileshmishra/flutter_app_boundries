import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://restcountries.eu/rest/v2/";

class API {

  static Future getALLCountries() {
    var url = baseUrl + "all";
    return http.get(url);
  }

  static Future getCountryByRegion(region){
    var url =  baseUrl + 'region/$region';
    return http.get(url);
  }



}
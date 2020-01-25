


import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://restcountries.eu/rest/v2";

class API {
  static Future getALLCountrues() {
    var url = baseUrl + "/all";
    return http.get(url);
  }
}
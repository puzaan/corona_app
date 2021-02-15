import 'dart:convert';

import 'package:corona_app/model/corona_board_cast.dart';
import 'package:corona_app/model/corona_nepal.dart';
import 'package:http/http.dart' as http;

class NetworkHandler {
  Future<CoronaNepal> getCoronaNepalSummary() async {
    CoronaNepal _coronaNepal = CoronaNepal();
    try {
      var response =
          await http.get('https://nepalcorona.info/api/v1/data/nepal');
      var result = jsonDecode(response.body);
      print('https://nepalcorona.info/api/v1/data/nepal');
      _coronaNepal.testNegative = result['tested_negative'].toString();
      _coronaNepal.testPositive = result['tested_positive'].toString();
      _coronaNepal.totalTest = result['tested_total'].toString();
      _coronaNepal.isolation = result['in_isolation'].toString();
      _coronaNepal.recovered = result['recovered'].toString();
      _coronaNepal.death = result['deaths'].toString();
      _coronaNepal.siteRepor = result['latest_sit_report']['type'];
      _coronaNepal.date = result['latest_sit_report']['date'].toString();

      return _coronaNepal;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<CoronaBoardCast> getCoronaBoardCast() async {
    String finalUrl = "https://nepalcorona.info/api/v1/podcasts";

    final response = await http.get(Uri.encodeFull(finalUrl));

    if (response.statusCode == 200) {
      return CoronaBoardCast.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Error getting data");
    }
  }
}

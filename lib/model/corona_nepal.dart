class CoronaNepal {
  String _testPositive;
  String _testNegative;
  String _totalTest;
  String _date;
  String _siteReport;
  String _isolation;
  String _recovered;
  String _death;

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get testPositive => _testPositive;

  set testPositive(String value) {
    _testPositive = value;
  }

  String get testNegative => _testNegative;

  set testNegative(String value) {
    _testNegative = value;
  }

  String get totalTest => _totalTest;

  set totalTest(String value) {
    _totalTest = value;
  }

  String get isolation => _isolation;

  set isolation(String value) {
    _isolation = value;
  }

  String get recovered => _recovered;

  set recovered(String value) {
    _recovered = value;
  }

  String get death => _death;

  set death(String value) {
    _death = value;
  }

  String get siteRepor => _siteReport;

  set siteRepor(String value) {
    _siteReport = value;
  }
}

import 'package:corona_app/model/corona_nepal.dart';
import 'package:corona_app/network/networkHandler.dart';
import 'package:corona_app/ui/corona_smmary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    requestCoronaData();

    super.initState();
  }

  void requestCoronaData() async {
    try {
      NetworkHandler _networkHandler = NetworkHandler();
      CoronaNepal _coronaNepal = await _networkHandler.getCoronaNepalSummary();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => SummaryUI(
                    coronaNepal: _coronaNepal,
                  )));
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Loading..",
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SpinKitSquareCircle(
            color: Colors.green,
            size: 50.0,
          )
        ],
      ),
    );
  }
}

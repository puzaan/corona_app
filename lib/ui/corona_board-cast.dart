import 'package:corona_app/model/corona_board_cast.dart';
import 'package:corona_app/network/networkHandler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardCastUI extends StatefulWidget {
  @override
  _BoardCastUIState createState() => _BoardCastUIState();
}

class _BoardCastUIState extends State<BoardCastUI> {
  Future<CoronaBoardCast> forecastObject;

  @override
  void initState() {
    super.initState();
    forecastObject = NetworkHandler().getCoronaBoardCast();

    forecastObject.then((coronaBoardCast) {
      //print(coronaBoardCast.data[0].source);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("Corona Board-cast Case"),
        ),
        body: Center(
            child: Container(
          child: FutureBuilder<CoronaBoardCast>(
            future: forecastObject,
            builder: (BuildContext context,
                AsyncSnapshot<CoronaBoardCast> snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: ListView.builder(
                      itemCount: snapshot.data.data.length,
                      itemBuilder: (context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Text(
                                snapshot.data.data[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),
                              trailing: Text(snapshot.data.data[index].source,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              subtitle: Text(snapshot.data.data[index].summary),
                              leading: Column(
                                children: [
                                  CircleAvatar(
                                      radius: 25,
                                      child: Image.network(
                                        snapshot.data.data[index].imageUrl,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.amber,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Whoops!',
                                            ),
                                          );
                                        },
                                        width: 150,
                                        height: 150,
                                      )),
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        )));
  }
}

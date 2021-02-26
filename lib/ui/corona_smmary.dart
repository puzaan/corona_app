import 'package:corona_app/color/constants_color.dart';
import 'package:corona_app/model/corona_nepal.dart';
import 'package:corona_app/ui/corona_board-cast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryUI extends StatefulWidget {
  final CoronaNepal coronaNepal;

  SummaryUI({this.coronaNepal});
  @override
  _SummaryUIState createState() => _SummaryUIState();
}

class _SummaryUIState extends State<SummaryUI> {
  String testPositive = '';
  String testNegative = '';
  String totalTest = '';
  String isolation = '';
  String recovered = '';
  String death = '';
  String siteReport = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor.withOpacity(.1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.green,
          ),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.navigate_next,
              size: 30,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BoardCastUI()));
            },
          )
        ],
        title: Text(
          'Corona Summary of Nepal',
          style: TextStyle(color: Colors.green, fontSize: 16),
        ),
      ),
      body: ListView(
        children: [
           Container(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 30),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.03),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Wrap(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF1C26EF).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Total Tested",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.totalTest} ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF1C26EF).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Total Confirmed",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.testPositive} ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Wrap(
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF1C26EF).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Tested Negative",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.testNegative}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF1C26EF).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "In Isolation",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.isolation} ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF6107F1).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Total Recovered",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.recovered} ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),

                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color:
                                        Color(0xFF6107F1).withOpacity(0.12),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/running.jpg",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Total Death",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(color: kTextColor),
                                              children: [
                                                TextSpan(
                                                    text:
                                                    "${widget.coronaNepal.death} ",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6
                                                        .copyWith(
                                                        fontWeight:
                                                        FontWeight.bold)),
                                                TextSpan(
                                                    text: "People",
                                                    style: TextStyle(
                                                        fontSize: 12, height: 2)),
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                      'Preventions',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/hand_wash.jpg',
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "Wash Hands",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/use_mask.jpg',
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "Use Mask",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Clean_Disinfect.jpg',
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "Clean disinfect",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                      "Reported by ${widget.coronaNepal.siteRepor}  on ${widget.coronaNepal.date}",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .5),
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF60BE93), Color(0xFF1B8D59)],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Dial 100 for \nMedic Help\n",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            TextSpan(
                                text: "If any symptoms appers",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(
                                      0.7,
                                    ),
                                    fontSize: 16))
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          'assets/nurse.jpg',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],

      ),
    );
  }
}

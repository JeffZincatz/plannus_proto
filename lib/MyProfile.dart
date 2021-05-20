import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    var ticks = List<int>.generate(9, (int index) => (index + 1) * 10);
    var features = [
      "Willpower",
      "Social",
      "Intelligence",
      "Strength",
      "Artistic",
      "Wisdom"
    ];
    var data = [[
      70,
      50,
      70,
      30,
      40,
      80
    ]];

    return Scaffold(
      appBar: AppBar(
        title: Text("Bernard's Profile"),
        toolbarHeight: 40,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row( // avatar and profile
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: screenWidth / 4.5,
                    foregroundImage: AssetImage('assets/avatar.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Name:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bernardus Krishna",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Email:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "bernardsw99@gmail.com",
                        style: TextStyle(
                          fontSize: 17,
                        )
                      ),
                      Text(
                        "User Since:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "20/5/2021",
                          style: TextStyle(
                            fontSize: 17,
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded (
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: RadarChart.light(
                ticks: ticks,
                features: features,
                data: data,
                reverseAxis: false,
                useSides: false,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Willpower",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "56/80 planned activities completed",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CircularPercentIndicator(
                          radius: screenWidth / 7,
                          lineWidth: 10.0,
                          percent: 0.7,
                          center: Text(
                            "70.0%",
                            style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          progressColor: Colors.greenAccent,
                        ),
                      ),
                    ],
                  )
                ),
                // TODO: I think the making of the card should be abstracted away but for now this is just a rough work
                Card(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Social",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "5 activities, 12 hours",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircularPercentIndicator(
                            radius: screenWidth / 7,
                            lineWidth: 10.0,
                            percent: 0.5,
                            center: Text(
                              "50.0%",
                              style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            progressColor: Colors.greenAccent,
                          ),
                        ),
                      ],
                    )
                ),
                Card(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intelligence",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "9 activities, 22 hours",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircularPercentIndicator(
                            radius: screenWidth / 7,
                            lineWidth: 10.0,
                            percent: 0.7,
                            center: Text(
                              "70%",
                              style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            progressColor: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                ),
                Card(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Strength",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "2 activities, 4 hours",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircularPercentIndicator(
                            radius: screenWidth / 7,
                            lineWidth: 10.0,
                            percent: 0.3,
                            center: Text(
                              "30.0%",
                              style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            progressColor: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                ),
                // TODO: not all properties are here.
              ],
            ),
          ),
        ],
      ),
    );
  }
}
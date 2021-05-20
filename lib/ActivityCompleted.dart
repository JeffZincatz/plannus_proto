import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActivityCompleted extends StatelessWidget {
  const ActivityCompleted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Great Job"),
        leading: BackButton(
          onPressed: () {
            // TODO: idk where exactly is this achievement page but welp just make first
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(flex: 3, child: Image.asset('assets/pixel_notebook.jpg')),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Activity Completed Successfully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Category: Studies",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                "Description: Organic Chemistry Chapter 7",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 3,),
                              Flexible(
                                child: Text(
                                  "Today at 12:05 PM",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "3 Hours",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Card(
              child: Column(
                children: [
                  Text(
                    "Share It!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: Image.asset("assets/twitter_logo.png",)),
                      Expanded(flex: 1, child: Image.asset("assets/facebook_logo.png")),
                      Expanded(flex: 1, child: Image.asset("assets/instagram_logo.png")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
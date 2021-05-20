import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:plannus_proto/NavBar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    String dropdownValue = "Studies";
    String startTime = "12:00";
    String endTime = "12:00";

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("PlanNUS"),
      ),
      drawer: NavBar(),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2021, 1, 1),
            lastDay: DateTime.utc(2030, 12, 12),
            calendarFormat: CalendarFormat.month,
          ),
          Divider(
            height: screenHeight / 20,
            thickness: 3.0,
            color: Colors.blue[100],
          ),
          Text(
            "Upcoming Activities",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: screenHeight / 6,
            child: Scrollbar(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black)
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.book,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Studying Chemistry",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                "Today",
                              ),
                              Flexible(
                                child: Text(
                                  "13:00 - 15:00",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  // TODO: Again, I think need to abstract these away. This is just for rough outline.for
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black)
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.sports_baseball,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Playing Badminton",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  "Today",
                                ),
                                Flexible(
                                  child: Text(
                                    "15:00 - 17:00",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black)
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.music_note,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Practising Piano",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  "Tomorrow",
                                ),
                                Flexible(
                                  child: Text(
                                    "08:30 - 10:30",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black)
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.book,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Studying Mathematics",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  "Tomorrow",
                                ),
                                Flexible(
                                  child: Text(
                                    "13:00 - 15:00",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                contentPadding: EdgeInsets.all(3),
                titlePadding: EdgeInsets.all(5),
                title: Text(
                  'Add An Activity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                children: <Widget>[
                  Text(
                    "Category",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return DropdownButton<String>(

                          items: <String>[
                            "Studies",
                            "Fitness",
                            "Arts",
                            "Social",
                            "Others",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(value: value, child: Text(value));
                          }).toList(),

                          value: dropdownValue,
                          icon: Icon(Icons.arrow_downward),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                        );
                      }
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter description',
                      labelText: 'Description',
                    ),
                  ),
                  Text(
                    "Start Time",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return OutlinedButton(
                        onPressed: () {
                          DatePicker.showTimePicker(
                              context,
                              showSecondsColumn: false,
                              onConfirm: (date) {
                                startTime = DateFormat.Hms().format(date).substring(0, 5);
                                setState(() {});
                              }
                          );
                        },
                        child: Text(
                          startTime,
                        ),
                      );
                    }
                  ),
                  Text(
                    "End Time",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return OutlinedButton(
                          onPressed: () {
                            DatePicker.showTimePicker(
                                context,
                                showSecondsColumn: false,
                                onConfirm: (date) {
                                  endTime = DateFormat.Hms().format(date).substring(0, 5);
                                  setState(() {});
                                }
                            );
                          },
                          child: Text(
                            endTime,
                          ),
                        );
                      }
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }
}

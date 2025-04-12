import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 110,
                        child: Text(
                          '$teamApoints',
                          style: TextStyle(
                              fontSize: teamApoints >= 1000
                                  ? 50
                                  : teamApoints >= 100
                                      ? 70
                                      : 100,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      customebutton('Add 1 point', 'A'),
                      customebutton('Add 2 points', 'A'),
                      customebutton('Add 3 points', 'A'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    indent: 10,
                    endIndent: 80,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 110,
                        child: Text(
                          '$teamBpoints',
                          style: TextStyle(
                              fontSize: teamBpoints >= 1000
                                  ? 50
                                  : teamBpoints >= 100
                                      ? 70
                                      : 100,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      customebutton('Add 1 point', 'B'),
                      customebutton('Add 2 points', 'B'),
                      customebutton('Add 3 points', 'B'),
                    ],
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  teamApoints = teamBpoints = 0;
                });
              },
              color: Colors.orange,
              minWidth: 120,
              child: Text("Reset"),
            )
          ],
        ),
      ),
    );
  }

  Widget customebutton(String content, String team) {
    bool onepoint = content.contains('1');
    bool twopoints = content.contains('2');
    return MaterialButton(
      onPressed: () {
        if (team == 'A') {
          if (onepoint) {
            setState(() {
              teamApoints++;
            });
          } else if (twopoints) {
            setState(() {
              teamApoints += 2;
            });
          } else {
            setState(() {
              teamApoints += 3;
            });
          }
        } else {
          if (onepoint) {
            setState(() {
              teamBpoints++;
            });
          } else if (twopoints) {
            setState(() {
              teamBpoints += 2;
            });
          } else {
            setState(() {
              teamBpoints += 3;
            });
          }
        }
      },
      color: Colors.orange,
      minWidth: 120,
      child: Text(content),
    );
  }
}

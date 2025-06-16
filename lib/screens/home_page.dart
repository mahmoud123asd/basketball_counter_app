import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double screenheight;
  final double screenwidth;

  const HomePage({super.key, required this.screenheight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: .02 * screenheight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: .625 * screenheight,
                child: Column(
                  children: [
                    Text(
                      "Team A",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: .17 * screenheight,
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 0 >= 1000
                                ? 50
                                : 0 >= 100
                                    ? 70
                                    : 100,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: .05 * screenheight,
                    ),
                    customebutton('Add 1 point', 1, 'A', .3 * screenwidth),
                    customebutton('Add 2 points', 2, 'A', .3 * screenwidth),
                    customebutton('Add 3 points', 3, 'A', .3 * screenwidth),
                  ],
                ),
              ),
              SizedBox(
                height: .625 * screenheight,
                child: VerticalDivider(
                  indent: 10,
                  endIndent: 80,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: .625 * screenheight,
                child: Column(
                  children: [
                    Text(
                      "Team B",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: .17 * screenheight,
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 0 >= 1000
                                ? 50
                                : 0 >= 100
                                    ? 70
                                    : 100,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: .05 * screenheight,
                    ),
                    customebutton('Add 1 point', 1, 'B', .3 * screenwidth),
                    customebutton('Add 2 points', 2, 'B', .3 * screenwidth),
                    customebutton('Add 3 points', 3, 'B', .3 * screenwidth),
                  ],
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              // setState(() {
              //   teamApoints = teamBpoints = 0;
              // });
            },
            color: Colors.orange,
            minWidth: .3 * screenwidth,
            child: Text("Reset"),
          )
        ],
      ),
    );
  }
}
Widget customebutton(String content, int points, String team, double width) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.orange,
      minWidth: width,
      child: Text(content),
    );
  }
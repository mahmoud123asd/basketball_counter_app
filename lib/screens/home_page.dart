import 'package:basketball_counter/cuibts/counter_cubit.dart';
import 'package:basketball_counter/cuibts/counterstates.dart';
import 'package:basketball_counter/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final double screenheight;
  final double screenwidth;
  const HomePage(
      {super.key, required this.screenheight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, Counterstates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: .17 * screenheight,
                          child: Text(
                            '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                            style: TextStyle(
                                fontSize: BlocProvider.of<CounterCubit>(context)
                                            .teamApoints >=
                                        1000
                                    ? 50
                                    : BlocProvider.of<CounterCubit>(context)
                                                .teamApoints >=
                                            100
                                        ? 70
                                        : 100,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: .05 * screenheight,
                        ),
                        CustomeButton(
                            content: 'Add 1 point',
                            points: 1,
                            team: 'A',
                            width: .3 * screenwidth),
                        CustomeButton(
                            content: 'Add 2 point',
                            points: 2,
                            team: 'A',
                            width: .3 * screenwidth),
                        CustomeButton(
                            content: 'Add 3 point',
                            points: 3,
                            team: 'A',
                            width: .3 * screenwidth),
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
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: .17 * screenheight,
                          child: Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                            style: TextStyle(
                                fontSize: BlocProvider.of<CounterCubit>(context)
                                            .teamBpoints >=
                                        1000
                                    ? 50
                                    : BlocProvider.of<CounterCubit>(context)
                                                .teamBpoints >=
                                            100
                                        ? 70
                                        : 100,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: .05 * screenheight,
                        ),
                        CustomeButton(
                            content: 'Add 1 point',
                            points: 1,
                            team: 'B',
                            width: .3 * screenwidth),
                        CustomeButton(
                            content: 'Add 2 point',
                            points: 2,
                            team: 'B',
                            width: .3 * screenwidth),
                        CustomeButton(
                            content: 'Add 3 point',
                            points: 3,
                            team: 'B',
                            width: .3 * screenwidth),
                      ],
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetCounters();
                },
                color: Colors.orange,
                minWidth: .3 * screenwidth,
                child: Text("Reset"),
              )
            ],
          ),
        );
      },
    );
  }
}

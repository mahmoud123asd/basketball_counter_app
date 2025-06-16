import 'package:basketball_counter/cuibts/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeButton extends StatelessWidget {
  final String content;
  final int points;
  final String team;
  final double width;
  const CustomeButton(
      {super.key,
      required this.content,
      required this.points,
      required this.team,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .teamIncrement(team: team, points: points);
      },
      color: Colors.orange,
      minWidth: width,
      child: Text(content),
    );
  }
}

import 'package:basketball_counter/cuibts/counterstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<Counterstates> {
  CounterCubit() : super(CountersIntialState());
  int teamApoints = 0;
  int teamBpoints = 0;
  void teamIncrement({required String team, required int points}) {
    if (team == 'A') {
      teamApoints += points;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += points;
      emit(CounterBIncrementState());
    }
  }

  void resetCounters() {
    teamApoints = teamBpoints = 0;
    emit(CountersResetState());
  }
}

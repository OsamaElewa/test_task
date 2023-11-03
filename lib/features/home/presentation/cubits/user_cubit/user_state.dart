
import 'package:test_task/features/home/data/models/user_model.dart';

abstract class UserState {}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserSuccessState extends UserState {
  final Data data;

  UserSuccessState(this.data);
}

class UserFailureState extends UserState {
  final String error;
  UserFailureState(this.error);
}

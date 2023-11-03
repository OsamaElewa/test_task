import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/home/presentation/cubits/user_cubit/user_state.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repository/user_repository.dart';



class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository) : super(UserInitialState());

  final UserRepository userRepository;


  static UserCubit get(context) => BlocProvider.of(context);

  Data? data;
  Future<void> getUsers() async {
    emit(UserLoadingState());
    Either<Failure, Data> result;
    result = await userRepository.getUsers();
    result.fold((failure) {
      print(failure.error);
      emit(UserFailureState(failure.error));
    }, (data) {
      this.data = data;
      print(data);
      print(data.users![0].name!);
      emit(UserSuccessState(data));
    });
  }
}

import 'package:dartz/dartz.dart';
import 'package:test_task/features/home/data/models/user_model.dart';
import '../../../../../core/errors/failures.dart';

abstract class UserRepository {

  Future<Either<Failure, Data>> getUsers();
}

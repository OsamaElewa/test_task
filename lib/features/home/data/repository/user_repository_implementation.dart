import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_task/features/home/data/models/user_model.dart';
import 'package:test_task/features/home/data/repository/user_repository.dart';

import '../../../../../core/api/api_services.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../core/api/end_points.dart';




class UserRepositoryImplementation extends UserRepository {
  final ApiServices apiServices;
  UserRepositoryImplementation(this.apiServices);

  Map<String,dynamic> users = {};
  @override
  Future<Either<Failure, Data>> getUsers() async{
    try {
      Response data = await apiServices.get(
          endPoint: EndPoints.users,
      );

      print(data.data);
      return Right(Data.fromJson(data.data));

    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure(error.response!.data['message'].toString()));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }
}
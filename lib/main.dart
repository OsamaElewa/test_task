import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/api/api_services_implementation.dart';
import 'package:test_task/features/home/data/repository/user_repository_implementation.dart';
import 'package:test_task/features/home/presentation/cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import 'package:test_task/features/home/presentation/cubits/user_cubit/user_cubit.dart';
import 'package:test_task/features/home/presentation/views/layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
    builder: (context, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BottomNavigationCubit(),
          ),
          BlocProvider(
            create: (context) => UserCubit(UserRepositoryImplementation(ApiServicesImplementation()))..getUsers(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const LayoutView(),
        ),
      );
    },
    );
  }
}

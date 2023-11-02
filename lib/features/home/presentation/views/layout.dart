import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import '../cubits/bottom_navigation_cubit/bottom_navigation_state.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) => Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        extendBody: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.menu)),
          title: Text(
              BottomNavigationCubit.get(context)
                  .appBarTitles[BottomNavigationCubit.get(context)
                  .currentIndex]
          ),
          centerTitle: true,
        ),
        body: BottomNavigationCubit.get(context)
            .bodyScreens[BottomNavigationCubit.get(context).currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(size: 27),
          unselectedIconTheme: const IconThemeData(size: 22),
          currentIndex: BottomNavigationCubit.get(context).currentIndex,
          onTap: (index){
            BottomNavigationCubit.get(context).changeBottomNavigation(index);
          },
          items: BottomNavigationCubit.get(context).bottomNavigationBarItems,

        ),
      ),
    );
  }
}

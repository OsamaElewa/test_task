import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:test_task/features/home/presentation/views/widgets/custom_tab_bar.dart';
import 'package:test_task/features/home/presentation/views/widgets/slider_section.dart';
import 'package:test_task/features/home/presentation/views/widgets/welcome_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const WelcomeSection(),
            SliderSection(),
            const SizedBox(height: 15,),
            const CustomTabBar(),
          ],
        ),
      ),
    );
  }
}

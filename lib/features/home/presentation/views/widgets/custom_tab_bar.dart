import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/app_strings.dart';

import 'package:test_task/features/home/presentation/views/widgets/categories_list.dart';
import 'package:test_task/features/home/presentation/views/widgets/order_widget.dart';
import 'package:test_task/features/home/presentation/views/widgets/services_widget.dart';


import '../../../../../core/utils/app_colors.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});
  @override
  _CustomTabBarState createState() => _CustomTabBarState();

}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(
              25.0,
            ),
          ),
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              color: AppColors.red,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(
                text: AppStrings.tapText1,
              ),
              Tab(
                text: AppStrings.tapText2,
              ),
              Tab(
                text: AppStrings.tapText3,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400.h,
          child: TabBarView(
            controller: _tabController,
            children: const [
              CategoriesList(),
              ServicesWidget(),
              OrderWidget()
            ],
          ),
        ),
      ],
    );
  }
}
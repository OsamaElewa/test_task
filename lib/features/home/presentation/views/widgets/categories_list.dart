import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/app_assets.dart';
import 'package:test_task/core/utils/app_strings.dart';
import 'package:test_task/features/home/presentation/cubits/user_cubit/user_cubit.dart';
import 'package:test_task/features/home/presentation/cubits/user_cubit/user_state.dart';
import 'package:test_task/features/home/presentation/views/widgets/categories_list_item.dart';
import 'package:test_task/features/home/presentation/views/widgets/categories_view_row.dart';

class CategoryModel {
  final String image;
  final String name;
  CategoryModel(this.image, this.name);
}

List<CategoryModel> catList = [
  CategoryModel(AppAssets.catImg1, 'Construction'),
  CategoryModel(AppAssets.catImg2, 'Insurances'),
  CategoryModel(AppAssets.catImg3, 'Legal'),
  CategoryModel(AppAssets.catImg4, 'Buy & Sell'),
  CategoryModel(AppAssets.catImg5, 'Accounting Services'),
];

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
  builder: (context, state) {
    if(state is UserSuccessState){
      return SingleChildScrollView(
        child: Column(
          children: [
            const CategoriesViewRow(title: AppStrings.categoriesText, seeAll: AppStrings.seeAllText),
            SizedBox(
              height: 400.h,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CategoriesListItem(model: UserCubit.get(context).data!.users![index]),
                  separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemCount: UserCubit.get(context).data!.users!.length
              ),
            ),
          ],
        ),
      );
    }else if(state is UserFailureState){
      return const Text(AppStrings.messageErrorText);
    }else{
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  },
);
  }
}

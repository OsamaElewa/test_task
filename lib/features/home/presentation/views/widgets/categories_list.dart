import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/app_assets.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const CategoriesViewRow(title: 'Categories View', seeAll: 'see all'),
          SizedBox(
            height: 400.h,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CategoriesListItem(model: catList[index]),
                separatorBuilder: (context, index) => const SizedBox(height: 10,),
                itemCount: catList.length
            ),
          ),
        ],
      ),
    );
  }
}

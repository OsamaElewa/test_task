import 'package:flutter/material.dart';
import 'package:test_task/core/utils/app_colors.dart';
import 'package:test_task/core/utils/app_styles.dart';

import '../../../data/models/user_model.dart';

class CategoriesListItem extends StatelessWidget {
  const CategoriesListItem({Key? key, required this.model}) : super(key: key);
  final UserModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 8,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
            //border: Border.all(color: Colors.black,width: 1)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('${model.id!}'),
                  const SizedBox(width: 10,),
                  Text(model.name!,style: AppStyles.textStyleDefinationText,),
                ],
              ),
              IconButton(onPressed: () {

              },
                  icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ),
      ),
    );
  }
}

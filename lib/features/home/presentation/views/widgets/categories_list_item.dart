import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/core/utils/app_styles.dart';
import 'package:test_task/features/home/presentation/views/widgets/categories_list.dart';

class CategoriesListItem extends StatelessWidget {
  const CategoriesListItem({Key? key, required this.model}) : super(key: key);
  final CategoryModel model;
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            //border: Border.all(color: Colors.black,width: 1)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(model.image),height: 50,width: 50,),
                  SizedBox(width: 10,),
                  Text(model.name,style: AppStyles.textStyleDefinationText,),
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

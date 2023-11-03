import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/utils/app_strings.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              height: 250.h,
              width: 250.w,
              child: Image(image: AssetImage(AppAssets.emptyBag),height: 200,width: 200,),
            ),
            const Text(AppStrings.emptyServicesText,style: AppStyles.textStyleDefinationText,),
            Text(AppStrings.emptyServicesText2,style: AppStyles.textStyleDeclarationText.copyWith(fontSize: 18),),
            Text(AppStrings.emptyServicesText3,style: AppStyles.textStyleDeclarationText.copyWith(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

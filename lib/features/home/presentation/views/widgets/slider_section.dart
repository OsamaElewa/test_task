import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_task/features/home/presentation/cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class SliderSection extends StatelessWidget {
  SliderSection({Key? key}) : super(key: key);

  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160.h,
          child: PageView.builder(itemBuilder: (context, index) => Container(
            height: 160.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xFFFFF5F5),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.sliderText,style: AppStyles.textStyleDefinationText.copyWith(fontSize: 18),),
                      Text(AppStrings.sliderText2,style: AppStyles.textStyleDefinationText.copyWith(fontSize: 18),),
                      SizedBox(height: 10.h,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          height: 35.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text(AppStrings.orderText,style: AppStyles.textStyleOrderText,)),
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(AppAssets.sliderImg),height: 130.h,width: 130.w,)
                ],
              ),
            ),
          ),
            itemCount: 3,
            controller: pageController,
          ),
        ),
        SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
            activeDotColor: AppColors.red
          ),
            controller: pageController,
            count: 3
        )
      ],
    );
  }
}





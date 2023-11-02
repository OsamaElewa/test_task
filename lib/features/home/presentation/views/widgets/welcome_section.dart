import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(image: AssetImage(AppAssets.personImg),height: 50,width: 50,),
            const Text(AppStrings.welcomeText,style: AppStyles.textStyleWelcomeTitle,),
            Image(image: AssetImage(AppAssets.handImg),height: 50,width: 50,)
          ],
        ),
        const SizedBox(height: 15,),
        const Text(AppStrings.definationText,style: AppStyles.textStyleDefinationText,),
        const SizedBox(height: 8,),
        const Text(AppStrings.declarationText,style: AppStyles.textStyleDeclarationText,),
        const Text(AppStrings.declarationText2,style: AppStyles.textStyleDeclarationText,),
        const SizedBox(height: 20,),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_styles.dart';

class CategoriesViewRow extends StatelessWidget {
  const CategoriesViewRow({Key? key, required this.title, required this.seeAll}) : super(key: key);

  final String title;
  final String seeAll;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: AppStyles.textStyleDefinationText,),
          Text(seeAll,style: const TextStyle(decoration: TextDecoration.underline),)
        ],
      ),
    );
  }
}

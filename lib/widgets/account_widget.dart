import 'package:flutter/material.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';

// ignore: must_be_immutable
class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({super.key,required this.appIcon,required this.bigText});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            left: Dimensions.widht20,
            top: Dimensions.widht10,
            bottom: Dimensions.widht10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  offset: const Offset(0, 2),
                  color: Colors.grey.withOpacity(0.2)
                )
              ]
            ),
            child: Row(
              children: [
                appIcon,
                SizedBox(width: Dimensions.widht20,),
                bigText
              ],
            ),
      );
  }
}

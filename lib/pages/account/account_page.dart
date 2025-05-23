import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/account_widget.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(text: "Profile",
        size: 24,color: Colors.white,),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.mainColor,
            iconColor: Colors.white,
            iconSize: Dimensions.height15*5,
            size: Dimensions.height15*10,),
            SizedBox(height: Dimensions.height30,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidget(appIcon: AppIcon(
                icon: Icons.person,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height10*5/2,
                size: Dimensions.height10*5,), bigText: BigText(text: "Ayush")),
                SizedBox(height: Dimensions.height20,),
                //phone
                AccountWidget(appIcon: AppIcon(
                icon: Icons.phone,
                backgroundColor: AppColors.yellowColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height10*5/2,
                size: Dimensions.height10*5,), bigText: BigText(text: "1234567890")),
                SizedBox(height: Dimensions.height20,),
                
                //email
                AccountWidget(appIcon: AppIcon(
                icon: Icons.email,
                backgroundColor: AppColors.yellowColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height10*5/2,
                size: Dimensions.height10*5,), bigText: BigText(text: "ayush@adfa.com")),
                SizedBox(height: Dimensions.height20,),
                //address
                AccountWidget(appIcon: AppIcon(
                icon: Icons.location_on,
                backgroundColor: AppColors.yellowColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height10*5/2,
                size: Dimensions.height10*5,), bigText: BigText(text: "Fill your address")),
                SizedBox(height: Dimensions.height20,),
                //message
                AccountWidget(appIcon: AppIcon(
                icon: Icons.message,
                backgroundColor: Colors.redAccent,
                iconColor: Colors.white,
                iconSize: Dimensions.height10*5/2,
                size: Dimensions.height10*5,), bigText: BigText(text: "Ayush")),
                SizedBox(height: Dimensions.height20,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/base/custom_loader.dart';
import 'package:food_app/base/show_custom_snackbar.dart';
import 'package:food_app/controllers/auth_controller.dart';
import 'package:food_app/pages/auth/sign_up_page.dart';
import 'package:food_app/routes/route_helper.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_text_field.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    void _login(AuthController authController) {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String phone = phoneController.text.trim();
      if (email.isEmpty) {
        showCustomSnackBar("Type in your email", title: "Email");
      } else if (phone.isEmpty) {
        showCustomSnackBar("Type in your phone number", title: "Phone number");
      }else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type in a valid email",
            title: "Valid email address");
      } else if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title: "password");
      } else if (password.length < 6) {
        showCustomSnackBar("Password cannot be less than six characters",
            title: "Password");
      } else {
        authController.login(email,phone, password).then((status) {
          if (status.isSuccess) {
            Get.toNamed(RouteHelper.getInitial());
          } else {
            showCustomSnackBar(status.message);
          }
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AuthController>(
          builder: (authController) {
            return !authController.isLoading
                ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Dimensions.screenHeight * 0.05,
                        ),
                        SizedBox(
                          height: Dimensions.screenHeight * 0.25,
                          child: const Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 80,
                              backgroundImage:
                                  AssetImage("assets/image/logo part 1.png"),
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: Dimensions.widht20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello",
                                style: TextStyle(
                                  fontSize: Dimensions.font20 * 3.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Sign into your account",
                                style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    color: Colors.grey[500]),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        AppTextField(
                            textEditingController: emailController,
                            hintText: "Email",
                            icon: Icons.email),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        AppTextField(
                            textEditingController: phoneController,
                            hintText: "Phone",
                            icon: Icons.phone),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        AppTextField(
                            isObscure: true,
                            textEditingController: passwordController,
                            hintText: "Password",
                            icon: Icons.password_sharp),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            RichText(
                                text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Get.back(),
                                    text: "Sign into your account",
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: Dimensions.font20))),
                            SizedBox(
                              width: Dimensions.widht20,
                            )
                          ],
                        ),
                        SizedBox(height: Dimensions.screenHeight * 0.05),
                        GestureDetector(
                          onTap: () {
                            _login(authController);
                          },
                          child: Container(
                            width: Dimensions.screenWidth / 2,
                            height: Dimensions.screenHeight / 13,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius30),
                                color: AppColors.mainColor),
                            child: Center(
                              child: BigText(
                                text: "Sign in",
                                size: Dimensions.font20 * 1.5,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Dimensions.screenHeight * 0.05),
                        RichText(
                            text: TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: Dimensions.font20),
                                children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.to(
                                        () => const SignUpPage(),
                                        transition: Transition.fade),
                                  text: " Create",
                                  style: TextStyle(
                                      color: AppColors.mainColor,
                                      fontSize: Dimensions.font20,
                                      fontWeight: FontWeight.bold))
                            ])),
                      ],
                    ),
                  )
                : const CustomLoader();
          },
        ));
  }
}

import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/models/sign_up_body.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  registration(SignUpBody signUpBody) {
    apiClient.postData(AppConstants.REGISTRATION_URI, );
  }
}

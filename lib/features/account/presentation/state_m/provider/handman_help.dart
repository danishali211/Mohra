import 'package:booking_system_flutter/model/login_model.dart';
import 'package:booking_system_flutter/network/network_utils.dart';
import 'package:booking_system_flutter/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HandManHelp {
  static Future<LoginResponse> loginCurrentUsers(BuildContext context,
      {required Map<String, dynamic> req,
      bool isSocialLogin = false,
      bool isOtpLogin = false}) async {
    String? uid = req['uid'];

    final userValue = await loginUser(req, isSocialLogin: false);

    if (userValue.userData != null && userValue.userData!.status == 0) ;
    userValue.userData?.uid = uid;

    return userValue;
  }

  static Future<LoginResponse> loginUser(Map request,
      {bool isSocialLogin = false}) async {
    LoginResponse res = LoginResponse.fromJson(await handleResponse(
        await buildHttpResponse(isSocialLogin ? 'social-login' : 'login',
            request: request, method: HttpMethodType.POST)));

    if (res.userData != null && res.userData!.userType != USER_TYPE_USER) {}

    return res;
  }

  static Future<LoginResponse> createUser(Map request,
      {bool isSocialLogin = false}) async {
    LoginResponse res = LoginResponse.fromJson(await (handleResponse(
        await buildHttpResponse('register',
            request: request, method: HttpMethodType.POST))));

    return res;
  }
}

import 'package:advanced_course/core/networking/api_constants.dart';
import 'package:advanced_course/features/login/data/models/login_request_body.dart';
import 'package:advanced_course/features/login/data/models/login_response.dart';
import 'package:advanced_course/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advanced_course/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';



part 'api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiEndPoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
 @POST(ApiEndPoints.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}

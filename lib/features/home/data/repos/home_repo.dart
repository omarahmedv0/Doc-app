import 'package:advanced_course/core/networking/api_result.dart';
import 'package:advanced_course/core/networking/api_service.dart';
import 'package:advanced_course/core/networking/error_handling.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  ApiService apiService;
  HomeRepo(this.apiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await apiService.getSpecializationData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

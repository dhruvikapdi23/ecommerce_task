import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio_import;
import 'package:ecommerce_task/config/app_config.dart';

import '../model/api_data_clas.dart';
import 'environment.dart';

enum ApiType { post, get, put, delete }

class ApiServices {
  final dio = Dio();

  Future<APIDataClass> commonApi(endPoint, dynamic body, ApiType apiType,
      {isToken = false}) async {
    APIDataClass apiData =
        APIDataClass(message: 'No data', isSuccess: false, data: '0');

    bool isInternet = await AppFunctions().isNetworkConnection();
    if (!isInternet) {
      apiData.message = "No Internet Access";
      apiData.isSuccess = false;
      apiData.data = 0;
      return apiData;
    } else {
      try {

        String apiName = "${ApiClass.baseUrl}$endPoint";

        dio_import.Response response;
        log("ApiClass.headers l:${ApiClass.headers}");
        Options options = Options(
            headers:  ApiClass.headers);

        switch (apiType) {
          case ApiType.post:
            response = await dio.post(apiName, data: body, options: options);
          case ApiType.get:
            response = await dio.get(apiName, data: body, options: options);
          case ApiType.put:
            response = await dio.put(apiName, data: body, options: options);
          case ApiType.delete:
            response = await dio.delete(apiName, data: body, options: options);
        }

        var responseData = response.data;
        apiData.message =  "";
        apiData.isSuccess =  true;
        apiData.data = responseData;
        return apiData;
      } on SocketException catch (e) {
        apiData = await dioException(e);
        return apiData;
      }
    }
  }

  Future<APIDataClass> dioException(e) async {
    APIDataClass apiData =
        APIDataClass(message: 'No data', isSuccess: false, data: '0');
    if (e is DioException) {
      if (e.type == DioExceptionType.badResponse) {
        final response = e.response;
        if (response!.statusCode == 403) {
          apiData.message = response.data.toString();
          apiData.isSuccess = false;
          apiData.data = response.statusCode;

          return apiData;
        } else {
          if (response.data != null) {
            apiData.message = response.data['message'];
            apiData.isSuccess = false;
            apiData.data = 0;
            return apiData;
          } else {
            apiData.message = response.data.toString();
            apiData.isSuccess = false;
            apiData.data = 0;
            return apiData;
          }
        }
      } else {
        final response = e.response;
        if (response != null && response.data != null) {
          final Map responseData = json.decode(response.data as String) as Map;
          apiData.message = responseData['message'] as String;
          apiData.isSuccess = false;
          apiData.data = 0;
          return apiData;
        } else {
          apiData.message = response!.statusCode.toString();
          apiData.isSuccess = false;
          apiData.data = 0;
          return apiData;
        }
      }
    } else {
      apiData.message = "";
      apiData.isSuccess = false;
      apiData.data = 0;
      return apiData;
    }
  }
}

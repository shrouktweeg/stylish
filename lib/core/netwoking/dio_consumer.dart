import 'package:dio/dio.dart';
import 'package:stylish/core/netwoking/api_interceptors.dart';
import 'package:stylish/core/netwoking/end_points.dart';
import 'package:stylish/core/errors/exceptions.dart';

import 'api_consumer.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.options.receiveDataWhenStatusError = true;

    dio.interceptors.add(ApiInterceptors(dio: dio));
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
    ));
  }

  @override
  Future get(String path, {dynamic data, Map<String, dynamic>? queryParameter, bool isForm = false}) async {
    try {
      final response = await dio.get(
        path,
        data: isForm ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(String path, {dynamic data, Map<String, dynamic>? queryParameter, bool isForm = false}) async {
    try {
      final response = await dio.post(
        path,
        data: isForm ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(String path, {dynamic data, Map<String, dynamic>? queryParameter, bool isForm = false}) async {
    try {
      final response = await dio.patch(
        path,
        data: isForm ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future delete(String path, {dynamic data, Map<String, dynamic>? queryParameter, bool isForm = false}) async {
    try {
      final response = await dio.delete(
        path,
        data: isForm ? FormData.fromMap(data) : data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}
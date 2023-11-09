import 'dart:convert';

import 'package:dio/dio.dart';

import '../service/error_response.dart';

class AppRepository {
  ErrorResponse checkResponseError(DioException error) {
/*
    if (error.type == DioExceptionType.badResponse) {
      var errorData = error.response!.data;
      var errorModel = ErrorResponse.fromJson(errorData);
      return errorModel;
    } else {
      return ErrorResponse();
    }
 */
    switch (error.type) {
      case DioExceptionType.badResponse:
        return ErrorResponse(
            status: error.response!.statusCode.toString(),
            code: error.response!.statusCode.toString(),
            message: error.response!.statusMessage!);
      case DioExceptionType.connectionError:
        return ErrorResponse(status: '', code: '', message: error.message!);
      case DioExceptionType.connectionTimeout:
        return ErrorResponse(status: '', code: '', message: error.message!);
      default:
        return ErrorResponse(status: '', code: '', message: error.message!);
    }
  }
}

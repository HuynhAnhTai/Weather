import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/infrastructure/network/request.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInterface {
  String get baseUrl;

  void setUp();

  Future<dynamic> request(Request requestModel);
}

@Singleton(as: NetworkInterface)
class Network implements NetworkInterface {
  late Dio _dio;

  @override
  String get baseUrl => "https://api.openweathermap.org";

  Network() {
    setUp();
  }

  @override
  void setUp() {
    this._dio = Dio(BaseOptions(baseUrl: baseUrl))
      ..interceptors
          .add(QueuedInterceptorsWrapper(onRequest: (options, handler) async {
        debugPrint(
            "Start api: ${options.baseUrl}${options.path} with params: ${options.queryParameters}, data: ${options.data}");
        handler.next(options);
      }, onError: (error, handler) async {
        debugPrint(
            "Error api ${error.requestOptions.method} ${error.requestOptions.path} - ${error.requestOptions.path}: ${error.response} - ${error.error}");
        handler.next(error);
      }, onResponse: (response, handler) {
        debugPrint(
            "Response ${response.requestOptions.method} ${response.requestOptions.path}: ${response.data.toString()}");
        handler.next(response);
      }));
  }

  @override
  Future<dynamic> request(Request requestModel) async {
    final formData = await requestModel.createFromData();
    Response response = await _dio.request(requestModel.path,
        queryParameters: requestModel.createParamQuery(),
        data: formData ?? requestModel.createData(),
        options: Options(method: requestModel.method));
    return response.data;
  }
}

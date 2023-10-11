import 'package:dio/dio.dart';

abstract class Request {
  final String path, method;

  Request({required this.path, required this.method});

  Map<String, dynamic> createParamQuery() {
    return {};
  }

  Map<String, dynamic> createData() {
    return {};
  }

  Future<FormData?> createFromData() {
    return Future.value(null);
  }
}

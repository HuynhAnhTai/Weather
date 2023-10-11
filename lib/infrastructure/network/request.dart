abstract class Request {
  final String path, method;

  Request({required this.path, required this.method});

  Map<String, dynamic> createParamQuery() {
    return {};
  }
}

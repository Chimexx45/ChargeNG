/// HTTP client wrapper for VoltPassNG API calls.
/// TODO: implement auth headers, error handling, and typed responses.

class ApiClient {
  ApiClient({required this.baseUrl});

  final String baseUrl;

  // Future<Map<String, dynamic>> get(String path) async { ... }
  // Future<Map<String, dynamic>> post(String path, Map body) async { ... }
}

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:medihere_patient/src/resources/rest_api_endpoint.dart';
import 'package:medihere_patient/src/services/locator.dart';

@lazySingleton
class APIHelper {
  final Client _client = Client();
  final APIEndpoint apiEndpoint = locator<APIEndpoint>();
}

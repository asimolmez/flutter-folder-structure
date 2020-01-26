
import 'package:flutter_on_the_go/models/api/request/get_fact_of_number_request_datamodel.dart';
import 'package:flutter_on_the_go/models/api/response/get_fact_of_number_reponse_model.dart';
import 'package:flutter_on_the_go/services/http_service.dart';

class HomeFactory {
  final HttpService _httpService;

  HomeFactory(this._httpService);

  Future<GetFactOfNumberResponseModel> getFactOfNumber(
      GetFactOfNumberRequestModel request) async {
    final response = await _httpService.doGet("/${request.number}");

    return GetFactOfNumberResponseModel.fromJson(response.data as String);
  }
}

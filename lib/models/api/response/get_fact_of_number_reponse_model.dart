class GetFactOfNumberResponseModel {
  final String fact;

  GetFactOfNumberResponseModel(this.fact);

  factory GetFactOfNumberResponseModel.fromJson(String fact) {
    return GetFactOfNumberResponseModel(fact);
  }
}
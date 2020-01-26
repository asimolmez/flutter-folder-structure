import 'package:dio/dio.dart';
import 'package:flutter_on_the_go/redux/home/factory.dart';
import 'package:flutter_on_the_go/services/http_service.dart';
import 'package:kiwi/kiwi.dart';

Container container = Container();

void setupContainer() {
  container.registerSingleton((c) => Dio());
  container.registerSingleton((c) => HttpService(c.resolve<Dio>()));
  container.registerSingleton((c) => HomeFactory(c.resolve<HttpService>()));
}

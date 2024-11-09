import 'package:dio/dio.dart';
import 'package:flutter_big_shop/util/Constants.dart';

Dio dio () {

  Dio dio =new Dio();

  dio.options.baseUrl = Constants.BASE_URL;

  dio.options.headers ['accept'] ="application/json";

  return dio;
}
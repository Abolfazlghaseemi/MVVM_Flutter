import 'package:flutter_application_1/Coinlist_viewmodel.dart';
import 'package:flutter_application_1/sevice/api/network_api.dart';
import 'package:flutter_application_1/sevice/api/web_api.dart';
import 'package:flutter_application_1/sevice/api/web_api_fake.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(WebApi());
  GetIt.I.registerFactory<CoinlistViewmodel>(() => CoinlistViewmodel());
  /*  GetIt.I.registerSingleton<NetworkApi>(WebApiFake());
  GetIt.I.registerFactory<CoinlistViewmodel>(() => CoinlistViewmodel()); */
}

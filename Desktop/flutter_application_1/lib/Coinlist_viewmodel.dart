import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Crypto.dart';
import 'package:flutter_application_1/sevice/api/network_api.dart';
import 'package:get_it/get_it.dart';

class CoinlistViewmodel extends ChangeNotifier {
/*   final _webApi=WebApi();
 */
  final NetworkApi _webApi = GetIt.I.get<NetworkApi>();
  List<Crypto> cryptoList = [];
  void loadData() async {
    cryptoList = await _webApi.getAllCryptos();
    notifyListeners();
  }
}

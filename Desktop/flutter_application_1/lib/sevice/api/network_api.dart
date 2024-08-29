import 'package:flutter_application_1/model/Crypto.dart';

abstract class NetworkApi {
  Future<List<Crypto>> getAllCryptos();
}

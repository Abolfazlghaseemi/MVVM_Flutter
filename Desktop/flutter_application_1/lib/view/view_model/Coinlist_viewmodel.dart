import 'package:flutter/material.dart';
import 'package:flutter_application_1/Coinlist_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class CoinListViewmodel extends StatefulWidget {
  const CoinListViewmodel({super.key});

  @override
  State<CoinListViewmodel> createState() => _CoinListViewmodel();
}

class _CoinListViewmodel extends State<CoinListViewmodel> {
/*   final _viewModel = CoinlistViewmodel();
 */
  final _viewModel = GetIt.I.get<CoinlistViewmodel>();
  @override
  void initState() {
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<CoinlistViewmodel>(builder: ((context, viewmodel, child) {
        return getui(viewmodel);
      })),
    );
  }

  Widget getui(CoinlistViewmodel viewModel) {
    return Scaffold(
        body: ListView.builder(
      itemCount: viewModel.cryptoList.length ?? 0,
      itemBuilder: (context, index) {
        return Column(children: [
          Text(
            viewModel.cryptoList[index].name ?? '',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            viewModel.cryptoList[index].symbol ?? '',
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
          Text(
            viewModel.cryptoList[index].priceUsd.toStringAsPrecision(2),
            style: TextStyle(fontSize: 15, color: Colors.green),
          ),
        ]);
      },
    ));
  }
}

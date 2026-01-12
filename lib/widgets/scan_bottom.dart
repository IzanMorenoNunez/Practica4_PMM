import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/models/scan_model.dart';
import 'package:qr_scan/providers/scan_list_provider.dart';
import 'package:qr_scan/utils/utils.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(
        Icons.filter_center_focus,
      ),
      onPressed: () {
        print('Botó polsat!');
        String barCodeScanres = 'geo:39.7260888,29113035';
        //String barCodeScanres = 'https://paucasesnovescifp.cat/';
        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);

        ScanModel nouScan = ScanModel(valor: barCodeScanres);
        scanListProvider.nouScan(barCodeScanres);
        launchURL(context, nouScan);
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanShareScreen extends StatelessWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scan & Share')),
      body: QRView(
        key: qrKey,
        onQRViewCreated: (QRViewController controller) {
          // Handle QR scanning logic here
        },
      ),
    );
  }
}

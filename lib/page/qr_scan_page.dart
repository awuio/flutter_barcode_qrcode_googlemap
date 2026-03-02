import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScanPage extends StatefulWidget {

  @override
  State<QRScanPage> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  String? scannedValue;
  bool checkYoutubeUrl = false;
  MobileScannerController moblieController = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Scan QR'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),
    body: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Scan QR Code', 
          style: TextStyle(
            fontSize:16, 
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '$scannedValue',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: const Icon(Icons.flash_on),
              onPressed: () => moblieController.toggleTorch(),
              ),
              IconButton(
                icon: Icon(Icons.switch_camera),
                onPressed: () => moblieController.switchCamera(),
              ), 
            ]
          )
        ],
      )
    ),
  );
}
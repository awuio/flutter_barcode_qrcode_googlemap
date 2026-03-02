import 'package:flutter/material.dart';
import 'package:flutter_barcode_qrcode_googlemap/page/qr_create_page.dart';

void main() {
  runApp(MyApp());
}

// stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: MyHomePage(),
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.red)),
    );
  }
}

// stf
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //fscaff
      appBar: AppBar(
        title: Text('Barcode Scanner'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => QRCreatePage(),
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                'Create QR Code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

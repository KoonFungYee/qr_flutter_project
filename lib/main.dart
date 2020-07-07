import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(ExampleApp());

/// The example application class
class ExampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'QR.Flutter',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: 'This QR code has an embedded image as well',
          version: QrVersions.auto,
          size: 320,
          // gapless: false,
          embeddedImage: AssetImage('assets/images/whatsapp.png'),
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: Size(62, 62),
          ),
        ),
      ),
    );
  }
}

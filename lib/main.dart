
import 'package:flutter/material.dart';
import 'package:resposniv/mobile.dart';

import 'desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(builder: (BuildContext context) {
        MediaQuery.of(context).size.width;
        if (MediaQuery.of(context).size.width.toInt() <= 560) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.8,
              ),
              child: MobileScreen());
        }
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: DesktopScreen());
      }),
    );
  }
}

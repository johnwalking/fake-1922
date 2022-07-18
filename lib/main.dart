import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/camera_screen.dart';
import './screens/main_page.dart';
// import 'provider/provider.dart';
import 'package:provider/provider.dart';
import 'providers/messages.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Messages(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.green,
        ),
        home: MainPage(),
        routes: {
            MainPage.routeName: (ctx) => MainPage(),
            QRViewExample.routeName: (ctx) => QRViewExample(),
          }
      ),
      
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MyShop'),
//       ),
//       body: Center(
//         child: Text('Let\'s build a shop!'),
//       ),
//     );
//   }
// }

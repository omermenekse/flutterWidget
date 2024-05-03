import 'package:flutter/material.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

//yeni bir rwidget oluşturduğumuzda

class MyApp extends StatelessWidget {
  //myapp uygulamanınn tamamını temsil ede
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //home uygulamanın açılış sayfasını temsil eder.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhome build çalıştı');
    return Scaffold(
      appBar:
          AppBar(title: Text('My Counter AppBar'), backgroundColor: Colors.red),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Butona basılma miktarı',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _sayac.toString(),
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('butona tıklandı ve sayac degeri $_sayac');
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}

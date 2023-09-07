import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(

      //   colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
      //   useMaterial3: true,
      // ),
      // home: const MyHomePage(title: 'MyApp'),
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Color.fromARGB(200, 200, 20, 20),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    child: const Text('BERITA TERBARU'),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                      child: const Text('PERTANDINGAN HARI INI'),
                      onPressed: () {}),
                ],
              ),
              Container(
                width: 500, // Sesuaikan lebar Container sesuai kebutuhan Anda
                height: 300, // Sesuaikan tinggi Container sesuai kebutuhan Anda
                child: Column(
                  children: [
                    Image.network(
                      'data:image/jpeg;base64,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',
                      width:
                          500, 
                      height:
                          200,
                      fit: BoxFit
                          .cover, 
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: const Text(
                        'Costa Mendekat Ke Palmeiras',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      color: Colors.purple,
                      alignment: Alignment.bottomCenter,
                      child: Text("Transfer",
                          style: TextStyle(fontSize: 30, color: Color.fromARGB(56, 255, 255, 255))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Alwan Alawi',
            ),
            Text(
              '2141720178',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
      debugShowCheckedModeBanner: false,
      title: 'ListView Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'List View'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      /*
      * Simple ListView()
      * This is the default constructor of the ListView class.
      * A ListView simply takes a list of widgets and makes it scrollable.
      * Usually, this is used with a few children as the List will also construct invisible elements in the list,
      * so numerous widgets may render this inefficiently.
      */
      body: ListView(
        // scrollDirection: Axis.horizontal,
        // reverse: true,
        padding: const EdgeInsets.all(8.0),
        children: const [
          Text('One', style: TextStyle(fontSize: 20)),
          Text('Two', style: TextStyle(fontSize: 20)),
          Text('Three', style: TextStyle(fontSize: 20)),
          Text('Four', style: TextStyle(fontSize: 20)),
          Text('Five', style: TextStyle(fontSize: 20)),
          Text('Six', style: TextStyle(fontSize: 20)),
          Text('Seven', style: TextStyle(fontSize: 20)),
          Text('Eight', style: TextStyle(fontSize: 20)),
          Text('Nine', style: TextStyle(fontSize: 20)),
          Text('Ten', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

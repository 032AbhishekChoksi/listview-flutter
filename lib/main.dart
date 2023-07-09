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
  var arrName = ['Abhishek', 'Deep', 'Monish', 'Kevin', 'Raj', 'Abhi'];

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
      // body: ListView(
      //   // scrollDirection: Axis.horizontal,
      //   // reverse: true,
      //   padding: const EdgeInsets.all(8.0),
      //   children: const [
      //     Text('One', style: TextStyle(fontSize: 20)),
      //     Text('Two', style: TextStyle(fontSize: 20)),
      //     Text('Three', style: TextStyle(fontSize: 20)),
      //     Text('Four', style: TextStyle(fontSize: 20)),
      //     Text('Five', style: TextStyle(fontSize: 20)),
      //     Text('Six', style: TextStyle(fontSize: 20)),
      //     Text('Seven', style: TextStyle(fontSize: 20)),
      //     Text('Eight', style: TextStyle(fontSize: 20)),
      //     Text('Nine', style: TextStyle(fontSize: 20)),
      //     Text('Ten', style: TextStyle(fontSize: 20)),
      //   ],
      // ),

      /*
      * ListView.builder()
      * The builder() constructor constructs a repeating list of widgets.
      * The constructor takes two main parameters:
      *   -> An itemCount for the number of repetitions for the widget to be constructed (not compulsory).
      *   -> An itemBuilder for constructing the widget which will be generated ‘itemCount‘ times (compulsory).
      * If the itemCount is not specified, infinite widgets will be constructed by default.
      */
      // body: ListView.builder(
      //   padding: const EdgeInsets.all(8.0),
      //   // scrollDirection: Axis.horizontal,
      //   // reverse: true,
      //   itemExtent: 50,
      //   itemBuilder: (context, index) {
      //     return Text(
      //       arrName[index],
      //       style: const TextStyle(fontSize: 20),
      //     );
      //   },
      //   itemCount: arrName.length,
      // ),

      /*
      * ListView.separated()
      * The ListView.separated() constructor is used to generate a list of widgets, but in addition, a separator widget can also be generated to separate the widgets.
      * In short, these are two intertwined list of widgets:
      *   -> the main list
      *   -> the separator list.
      * Unlike the builder() constructor, the itemCount parameter is compulsory here.
      */
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: arrName.length,
        itemBuilder: (context, index) {
          return Text(
            arrName[index],
            style: const TextStyle(fontSize: 20),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 5, thickness: 2);
        },
      ),
    );
  }
}

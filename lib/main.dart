import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 220, 122, 155),
          title: Text("My Flutter App"),
        ),
        body: const Center(child: Text("Hello Flutter")),
      ),

    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

  
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
      
//       _counter++;
      
//     });
//   }

//   void _decrementCounter(){
//     setState((){
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    


//     return Scaffold(
//       appBar: AppBar(
        

//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
//         title: Text(widget.title),
//       ),
//       body: Center(
        

//         child: Column(
          


//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       FloatingActionButton(
//         onPressed: _decrementCounter,
//         tooltip: 'Decrement',
//         child: const Icon(Icons.remove),
//       )
//         ],
//       ), 

//     );
//   }
// }
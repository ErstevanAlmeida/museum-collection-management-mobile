import 'package:flutter/material.dart';
import 'package:museum_collection/widgets/left_drawer.dart';
import 'package:museum_collection/widgets/collection_card.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<MuseumItem> items = [
    MuseumItem("Lihat Koleksi", Icons.museum_outlined),
    MuseumItem("Tambah Koleksi", Icons.add_circle_outline_outlined),
    MuseumItem("Logout", Icons.logout),
];

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 224, 104),
        title: const Text(
          'DS Museum',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: Container(
        color: const Color.fromARGB(255, 147, 204, 234),
        child: SingleChildScrollView(
          // Widget wrapper yang dapat discroll
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              // Widget untuk menampilkan children secara vertikal
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                  child: Text(
                    'Koleksi', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Grid layout
                GridView.count(
                  // Container pada card kita.
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: items.map((MuseumItem item) {
                    // Iterasi untuk setiap item
                    return CollectionCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

// class CollectionCard extends StatelessWidget {
//   final MuseumItem item;

//   const CollectionCard(this.item, {super.key}); // Constructor

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: const Color.fromARGB(255, 147, 204, 234),
//       child: InkWell(
//         // Area responsive terhadap sentuhan
//         onTap: () {
//           // Memunculkan SnackBar ketika diklik
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(SnackBar(
//                 content: Text("Kamu telah menekan tombol ${item.name}!")));

//           // Navigate ke route yang sesuai
//           if (item.name == "Tambah Koleksi") {
//             Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const CollectionFormPage()));
//           }
//         },
//         child: Container(
//           // Container untuk menyimpan Icon dan Text
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 248, 224, 104),
//           border: Border.all(
//             color: Colors.white, 
//             width: 2.0, 
//           ),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   item.icon,
//                   color: Colors.grey.shade800,
//                   size: 30.0,
//                 ),
//                 const Padding(padding: EdgeInsets.all(3)),
//                 Text(
//                   item.name,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Color.fromARGB(255, 16, 34, 50)),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// bin

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

// return Scaffold(
    //   appBar: AppBar(
    //     // TRY THIS: Try changing the color here to a specific color (to
    //     // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    //     // change color while the other colors stay the same.
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: Column(
    //       // Column is also a layout widget. It takes a list of children and
    //       // arranges them vertically. By default, it sizes itself to fit its
    //       // children horizontally, and tries to be as tall as its parent.
    //       //
    //       // Column has various properties to control how it sizes itself and
    //       // how it positions its children. Here we use mainAxisAlignment to
    //       // center the children vertically; the main axis here is the vertical
    //       // axis because Columns are vertical (the cross axis would be
    //       // horizontal).
    //       //
    //       // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
    //       // action in the IDE, or press "p" in the console), to see the
    //       // wireframe for each widget.
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
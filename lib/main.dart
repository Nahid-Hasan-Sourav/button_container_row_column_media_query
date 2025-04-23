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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Button Rows"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align rows at the top
          children: [
            // First Row: Two Buttons
            Container(
              height: 100.0, // Row height
              //width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Elevated Button 1");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.35, // 35% of screen width
                        0, // Auto height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Text("Button 1"),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Text Button 1");
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.35, // 35% of screen width
                        0, // Auto height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Text("Button 2"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0), // Space between rows
            // Second Row: Three Buttons
            Container(
              height: 100.0, // Row height
              width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Elevated Button 2");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                        0, // Auto height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Text("Button 3"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Elevated Button 3");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                        0, // Auto height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Text("Button 4"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Elevated Button 4");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                        0, // Auto height
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Text("Button 5"),
                  ),
                ],
              ),
            ),

          // third container with image
          Container(
           margin: const EdgeInsets.only(top: 16.0), // Top margin for first Row
            height: 200.0, // Row height
              width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                //borderRadius: BorderRadius.circular(10.0),
              ),

          child: 
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjcflCzN8--3syViq_cG8w_CwGf9vGkYLUmw&s",
            fit: BoxFit.cover, // Fill the Container
            
            ),
          
          )
          ],
        ),
      ),
    );
  }
}
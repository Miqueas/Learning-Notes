import "package:flutter/material.dart";

void main() => runApp(const MyExpanded());

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expanded")),
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: const Center(
                  child: Text("A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: const Center(
                  child: Text("B",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
            Expanded(
              child: Container(
                color: Colors.deepOrange,
                child: const Center(
                  child: Text("C",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

class MyPadding extends StatelessWidget {
  const MyPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Padding")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(40),
                color: Colors.amber,
                child: const Text("A",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  padding: const EdgeInsets.all(40),
                  color: Colors.red,
                  child: const Text("B",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Divider")),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: const Center(
                  child: Text("A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
            const Divider(
              thickness: 2,
              height: 40,
              indent: 40,
              endIndent: 40,
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: const Center(
                  child: Text("B",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
            const Divider(
              thickness: 2,
              height: 40,
              indent: 40,
              endIndent: 40,
            ),
            Expanded(
              child: Container(
                color: Colors.deepOrange,
                child: const Center(
                  child: Text("C",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
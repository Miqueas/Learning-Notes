import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Material(
        child: MyHomePage(),
      ),
      routes: {
        "Page1": (context) => const MyPage1(),
        "Page2": (context) => const MyPage2(),
        "Page3": (context) => const MyPage3(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página principal"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            MenuItemButton(
              leadingIcon: const Icon(Icons.label),
              onPressed: () => Navigator.pushNamed(context, "Page1"),
              child: const Text("Página 1")
            ),
            MenuItemButton(
              leadingIcon: const Icon(Icons.label),
              onPressed: () => Navigator.pushNamed(context, "Page2"),
              child: const Text("Página 2")
            ),
            MenuItemButton(
              leadingIcon: const Icon(Icons.label),
              onPressed: () => Navigator.pushNamed(context, "Page3"),
              child: const Text("Página 3")
            ),
          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Página principal", 
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyPage1()
              )
            ),
            child: const Text("Ir a página 1")
          ),
          Container(padding: const EdgeInsets.only(bottom: 10),),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyPage2()
              )
            ),
            child: const Text("Ir a página 2")
          ),
          Container(padding: const EdgeInsets.only(bottom: 10),),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyPage3()
              )
            ),
            child: const Text("Ir a página 3")
          ),
        ],
      ),
    );
  }
}

class MyPage1 extends StatelessWidget {
  const MyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 1"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Página 1", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Volver"),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 2"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Página 2", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Volver"),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

class MyPage3 extends StatelessWidget {
  const MyPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 3"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Página 3", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Volver"),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
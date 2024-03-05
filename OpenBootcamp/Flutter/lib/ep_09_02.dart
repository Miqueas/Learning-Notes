import "package:flutter/material.dart";
import "package:location/location.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: const Text("GPS"),),
          body: const HomePage(),
        ),
      )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _location = Location();
  LocationData? _locationData;

  void _doGetLocation() {
    _location.getLocation().then((value) {
      setState(() {
        _locationData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Latitude: ${_locationData?.latitude}")),
        Center(child: Text("Longitude: ${_locationData?.longitude}")),
        Center(
          child: TextButton.icon(
            icon: const Icon(Icons.location_on),
            label: const Text("Get Location"),
            onPressed: _doGetLocation,
          ),
        ),
      ]
    );
  }
}
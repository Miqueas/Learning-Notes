import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:io';

final class FnExercise0902Location extends StatefulWidget {
  const FnExercise0902Location({super.key});

  @override
  State<FnExercise0902Location> createState() => _FnExercise0902LocationState();
}

final class _FnExercise0902LocationState extends State<FnExercise0902Location> {
  LocationData? _locationData;

  void _onGetLocation() async {
    final location = Location();
    _locationData = await location.getLocation();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final lat = switch (_locationData) {
      null => 'Unknown',
      _ => _locationData!.latitude.toString(),
    };

    final lon = switch (_locationData) {
      null => 'Unknown',
      _ => _locationData!.longitude.toString(),
    };

    if (!(Platform.isIOS || Platform.isAndroid)) {
      return const Center(
        child: Text('Location support is not available on this platform'),
      );
    }

    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Latitude: $lat'),
        Text('Longitude: $lon'),
        const Gap(8),
        TextButton.icon(
          icon: const Icon(Icons.location_on),
          label: const Text('Get Location'),
          onPressed: _onGetLocation,
        ),
      ],
    ),);
  }
}
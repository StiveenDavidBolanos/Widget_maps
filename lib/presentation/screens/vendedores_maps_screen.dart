import 'package:flutter/material.dart';
import 'package:maps_testing/domain/Locations/Location.dart';
import 'package:maps_testing/presentation/widgets/maps/locations_in_maps.dart';

class VendedoresMapsScreen extends StatelessWidget {
  const VendedoresMapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = [
      Location(
          name: 'Vendedor 1',
          info: 'Información del vendedor 1',
          markerId: '1',
          latIngX: 0.363214,
          latIngY: -78.112971),
      Location(
          name: 'Vendedor 2',
          markerId: '2',
          latIngX: 0.345971,
          latIngY: -78.132153),
      Location(
          name: 'Vendedor 3',
          markerId: '3',
          latIngX: 0.345971,
          latIngY: -78.136069),
      Location(
          name: 'Vendedor 4',
          markerId: '4',
          latIngX: 0.345485,
          latIngY: -78.126464),
      Location(
          name: 'Vendedor 5',
          markerId: '4',
          latIngX: 0.322347,
          latIngY: -78.134932),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations List'),
        leading: Icon(Icons.map_rounded),
      ),
      body: Center(
        child: LocationsInMaps(
          locations: locations,
        ),
      ),
    );
  }
}

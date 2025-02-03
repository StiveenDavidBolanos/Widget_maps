import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationsInMaps extends StatelessWidget {
  var locations;

  LocationsInMaps({
    super.key,
    required this.locations,
  });

  @override
  Widget build(BuildContext context) {
    List<Marker> markers = [
      ...locations.map<Marker>((e) => Marker(
          markerId: MarkerId(e.markerId.toString()),
          position: LatLng(e.latIngX, e.latIngY),
          infoWindow: InfoWindow(title: e.name, snippet: e.info)))
    ];
    return GoogleMap(
        markers: markers.toSet(),
        initialCameraPosition:
            CameraPosition(zoom: 20, target: LatLng(0.363214, -78.112971)));
  }
}

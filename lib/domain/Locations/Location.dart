import 'package:dio/dio.dart';
import 'package:maps_testing/domain/Locations/LocationEntity.dart';
import 'package:maps_testing/domain/datasources/VendorLocations.dart';

class Location {
  final String markerId;
  final double latIngX;
  final double latIngY;
  final String name;
  final String info;
  Location(
      {required this.name,
      this.info = '',
      required this.markerId,
      required this.latIngX,
      required this.latIngY});

  final dio = Dio();

  Future<List<Location>> getVendorLocations() async {
    final response = await dio.get('//Locaciones de los vendedores');
    List<Location> list = [];
    return list;
  }

  Future<List<LocationEntity>> getVendorLocationEntities() async {
    List<Location> locations = await getVendorLocations();
    return locations.map((location) {
      return LocationEntity(
        codvendedor: location.markerId, // Ejemplo de mapeo 1 a 1
        mac: '00:00:00:00:00:00', // Valor fijo o derivado según tu lógica
        latitud: location.latIngX,
        longitud: location.latIngY,
        fecha: DateTime.now(), // Usando la fecha actual
        bateria: 100, // Valor fijo, modifícalo según tus necesidades
        version: 1, // Valor fijo o derivado según tu lógica
      );
    }).toList();
  }
}

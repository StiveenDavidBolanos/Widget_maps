import 'package:dio/dio.dart';
import 'package:maps_testing/domain/Locations/Location.dart';

final dio = Dio();

Future<List<Location>> getVendorLocations() async {
  final response = await dio.get('//Locaciones de los vendedores');
  List<Location> list = [];
  return list;
}

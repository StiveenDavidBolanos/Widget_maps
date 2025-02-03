class LocationEntity {
  final String codvendedor;
  final String mac;
  final double latitud;
  final double longitud;
  final DateTime fecha;
  final int bateria;
  final int version;

  LocationEntity(
      {required this.codvendedor,
      required this.mac,
      required this.latitud,
      required this.longitud,
      required this.fecha,
      required this.bateria,
      required this.version});
}

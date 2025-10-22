import 'package:equatable/equatable.dart';

class AtmLocation extends Equatable {
  final int id;
  final double latitude;
  final double longitude;
  final String name;
  final String address;
  final bool availableCash;
  final int status;

  const AtmLocation({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.address,
    required this.availableCash,
    required this.status,
  });

  @override
  List<Object> get props =>
      [id, latitude, longitude, name, address, availableCash, status];
}

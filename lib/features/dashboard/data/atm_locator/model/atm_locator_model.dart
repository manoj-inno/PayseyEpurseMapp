import '../../../domain/atm_locator/atm_locator_entity.dart';

class AtmLocationModel extends AtmLocation {
  const AtmLocationModel({
    required super.id,
    required super.latitude,
    required super.longitude,
    required super.name,
    required super.address,
    required super.availableCash,
    required super.status,
  });

  factory AtmLocationModel.fromJson(Map<String, dynamic> json) {
    return AtmLocationModel(
      id: json['id'],
      latitude: json['latitude'] is int
          ? (json['latitude'] as int).toDouble()
          : json['latitude'],
      longitude: json['longitude'] is int
          ? (json['longitude'] as int).toDouble()
          : json['longitude'],
      name: json['name'],
      address: json['address'],
      availableCash: json['available_cash'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'name': name,
      'address': address,
      'available_cash': availableCash,
      'status': status,
    };
  }
}

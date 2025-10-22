import 'package:hive_ce/hive.dart';
import 'atm_locator_model.dart';

part 'local_atm_model.g.dart';

@HiveType(typeId: 3) // Make sure this typeId is unique
class LocalAtmModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final double latitude;

  @HiveField(2)
  final double longitude;

  @HiveField(3)
  final String name;

  @HiveField(4)
  final String address;

  @HiveField(5)
  final bool availableCash;

  @HiveField(6)
  final int status;

  LocalAtmModel({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.address,
    required this.availableCash,
    required this.status,
  });

  factory LocalAtmModel.fromAtmLocationModel(AtmLocationModel model) {
    return LocalAtmModel(
      id: model.id,
      latitude: model.latitude,
      longitude: model.longitude,
      name: model.name,
      address: model.address,
      availableCash: model.availableCash,
      status: model.status,
    );
  }

  AtmLocationModel toAtmLocationModel() {
    return AtmLocationModel(
      id: id,
      latitude: latitude,
      longitude: longitude,
      name: name,
      address: address,
      availableCash: availableCash,
      status: status,
    );
  }
}

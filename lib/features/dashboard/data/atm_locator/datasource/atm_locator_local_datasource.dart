import '../../../../../core/storage/hive_manager.dart';
import '../model/atm_locator_model.dart';
import '../model/local_atm_model.dart';

abstract class AtmLocalDataSource {
  Future<List<AtmLocationModel>> getAtmLocations();
  Future<void> cacheAtmLocations(List<AtmLocationModel> locations);
}

class AtmLocalDataSourceImpl implements AtmLocalDataSource {
  final HiveManager hiveManager;
  static const String atmBoxName = 'atmBox';

  AtmLocalDataSourceImpl({required this.hiveManager});

  @override
  Future<List<AtmLocationModel>> getAtmLocations() async {
    final box = hiveManager.atmBox;
    final localAtms = box.values.cast<LocalAtmModel>().toList();
    return Future.value(
        localAtms.map((localAtm) => localAtm.toAtmLocationModel()).toList());
  }

  @override
  Future<void> cacheAtmLocations(List<AtmLocationModel> locations) async {
    final box = hiveManager.atmBox;
    await box.clear();

    final localModels = locations
        .map((location) => LocalAtmModel.fromAtmLocationModel(location))
        .toList();

    await box.addAll(localModels);
  }
}

import 'package:flutter/widgets.dart';

abstract class StoreTextControllerUseCase {
  void call(String key, TextEditingController controller);
  TextEditingController? get(String key);
  void dispose(String key);
}

class StoreTextControllerUseCaseImpl implements StoreTextControllerUseCase {
  final Map<String, TextEditingController> _controllerMap = {};

  @override
  void call(String key, TextEditingController controller) {
    _controllerMap[key] = controller;
  }

  @override
  TextEditingController? get(String key) {
    return _controllerMap[key];
  }

  @override
  void dispose(String key) {
    final controller = _controllerMap.remove(key);
    controller?.dispose();
  }
}

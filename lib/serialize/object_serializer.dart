library object_serializer;

import 'package:exportable/exportable.dart';

class ObjectSerializer {

  static final ObjectSerializer _singleton = new ObjectSerializer._internal();

  factory ObjectSerializer() {
    return _singleton;
  }

  ObjectSerializer._internal();

  /**
   * TODO: Throw exception when not serializable?
   */
  String toJsonFromList(List list) {
    List jsonList = [];
    for (Exportable item in list) {
      jsonList.add(item.toJson());
    }
    return '[' + jsonList.join(',') + ']';
  }

  bool isSerializable(object)
      => object is Exportable;
}
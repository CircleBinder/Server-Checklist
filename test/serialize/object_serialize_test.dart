import 'package:exportable/exportable.dart';
import 'package:unittest/unittest.dart';
import '../../lib/serialize/object_serializer.dart';

main() {
  ObjectSerializer serializer = new ObjectSerializer();
  expect(serializer.isSerializable(new MockNotSerializableClass()), false);
  expect(serializer.isSerializable(new MockSerializableClass()), true);
  expect(new MockSerializableClass().toJson(), SAMPLE_JSON_STRING);
  expect(new MockSerializableList().toJson(), SAMPLE_JSON_ARRAY_STRING);
}

const SAMPLE_MESSAGE = 'Hello world!';
const SAMPLE_JSON_STRING = '{"message":"${SAMPLE_MESSAGE}"}';
const SAMPLE_JSON_ARRAY_STRING = '[${SAMPLE_JSON_STRING},${SAMPLE_JSON_STRING}]';

class MockSerializableClass extends Object with Exportable {

  @export String message = SAMPLE_MESSAGE;

}

class MockSerializableList extends Object with Exportable {

  @export List<MockSerializableClass> itemList = [
      new MockSerializableClass(),
      new MockSerializableClass(),
  ];

  @override String toJson()
      => new ObjectSerializer().toJsonFromList(itemList);

}

class MockNotSerializableClass {

  String message = SAMPLE_MESSAGE;

}

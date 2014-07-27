part of circlebinder_rpc;

abstract class RpcMethod {
  Map requestSchema();
  Future<String> run(Map requestParameters);
}

class InvalidResponseMethod implements RpcMethod {

  Map<String, Map<String, RpcSchemaFragment>> requestSchema() => {};

  Future<String> run(Map parameters) {
    return new Future((){
      return "Invalid request!";
    });
  }

}

class RpcSchemaBuilder {

  Map<String, Map<String, RpcSchemaFragment>> schema;

  RpcSchemaBuilder() {
    this.schema = {};
  }

  RpcSchemaBuilder add(String key, Map<String, RpcSchemaFragment> fragment) {
    schema[key] = fragment;
    return this;
  }

}

class RpcSchemaFragment {
  bool required;
  var defaultValue;
  var sampleValue;

  RpcSchemaFragment({bool required, var defaultValue, var sampleValue}) {
    this.required = required != null ? required : false;
    this.defaultValue = defaultValue != null ? defaultValue : null;
    this.sampleValue = sampleValue != null ? sampleValue : defaultValue;
  }

}

class SchemaValidator {
  Map<String, Map<String, RpcSchemaFragment>> _schema;
  Map _parameters;

  SchemaValidator(Map<String, Map<String, RpcSchemaFragment>> schema, Map parameters) {
    this._schema = schema;
    this._parameters = parameters;
  }

  bool isValid() {
    bool valid = true;
    for (String schemaKey in _schema.keys) {
      for (String key in _schema[schemaKey].keys) {
        if (_schema[schemaKey][key].required == true && !_parameters.containsKey(schemaKey)) {
          valid = false;
        }
      }
    }
    return valid;
  }

  Map getValidParameters() {
    Map values = {};
    for (String schemaKey in _schema.keys) {
      for (String itemKey in _schema[schemaKey].keys) {
        bool hasParameter = _parameters.containsKey(schemaKey) && _parameters[schemaKey] != null
            && _parameters[schemaKey][itemKey] != null;
        if (hasParameter) {
          if (values[schemaKey] == null) {
            values[schemaKey] = {};
          }
          values[schemaKey][itemKey] = _parameters[schemaKey][itemKey];
        } else if (_schema[schemaKey].containsKey(itemKey) && _schema[schemaKey][itemKey].defaultValue != null) {
          if (values[schemaKey] == null) {
            values[schemaKey] = {};
          }
          values[schemaKey][itemKey] = _schema[schemaKey][itemKey].defaultValue;
        }
      }
    }
    return values;
  }

}

part of circlebinder_rpc;

class RpcChecklistDelete {

  static RpcChecklistDelete _instance = new RpcChecklistDelete._();

  factory RpcChecklistDelete() {
    return _instance;
  }

  RpcChecklistDelete._();

  Future<String> dispatch(Map requestParameters) {
    if (!requestParameters.containsKey('version')) {
      return new InvalidResponseMethod().run(requestParameters);
    }

    RpcMethod method;
    switch (requestParameters['version']) {
      case 1:
        method = new ChecklistDeleteV1();
        break;
      default:
        method = new InvalidResponseMethod();
    }

    SchemaValidator validator = new SchemaValidator(method.requestSchema(), requestParameters);
    if (!validator.isValid()) {
      return new InvalidResponseMethod();
    }

    return method.run(validator.getValidParameters());
  }

}

class ChecklistDeleteV1 implements RpcMethod {

  @override Map<String, RpcSchemaFragment> requestSchema()
      => new RpcSchemaBuilder()
        .add("checklist_id", new RpcSchemaFragment(required: true, sampleValue: 42))
        .schema;

  @override Future<String> run(Map requestParameters) {
    return new Future((){
      return {"ChecklistDeleteV1": requestParameters};
    });
  }

}

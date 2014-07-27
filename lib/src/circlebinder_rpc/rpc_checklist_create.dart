part of circlebinder_rpc;

class RpcChecklistCreate {

  static RpcChecklistCreate _instance = new RpcChecklistCreate._();

  factory RpcChecklistCreate() {
    return _instance;
  }

  RpcChecklistCreate._();

  Future<String> dispatch(Map requestParameters) {
    if (!requestParameters.containsKey('version')) {
      return new InvalidResponseMethod().run(requestParameters);
    }

    RpcMethod method;
    switch (requestParameters['version']) {
      case 1:
        method = new ChecklistCreateV1();
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

class ChecklistCreateV1 implements RpcMethod {

  @override Map<String, Map<String, RpcSchemaFragment>> requestSchema()
      => new RpcSchemaBuilder()
          .add("summary", RpcSchemaFragmentV1.checklistSummary())
          .add("circle_id_list", RpcSchemaFragmentV1.circleIdList())
          .schema;

  @override Future<String> run(Map parameters) {
    return new Future((){
      return {"ChecklistCreateV1": parameters};
    });
  }

}

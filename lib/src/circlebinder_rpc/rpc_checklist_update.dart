part of circlebinder_rpc;

class RpcChecklistUpdate {

  static RpcChecklistUpdate _instance = new RpcChecklistUpdate._();

  factory RpcChecklistUpdate() {
    return _instance;
  }

  RpcChecklistUpdate._();

  Future<String> dispatch(Map requestParameters) {
    if (!requestParameters.containsKey('version')) {
      return new InvalidResponseMethod().run(requestParameters);
    }

    RpcMethod method;
    switch (requestParameters['version']) {
      case 1:
        method = new ChecklistUpdateV1();
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

class ChecklistUpdateV1 implements RpcMethod {

  @override Map<String, Map<String, RpcSchemaFragment>> requestSchema()
      => new RpcSchemaBuilder()
        .add('checklist_id', RpcSchemaFragmentV1.checklistId())
        .add("summary", RpcSchemaFragmentV1.checklistSummary())
        .add('circle_id_list', RpcSchemaFragmentV1.circleIdList())
        .schema;

  @override Future<String> run(Map parameters) {
    return new Future((){
      return {"ChecklistUpdateV1": parameters};
    });
  }

}

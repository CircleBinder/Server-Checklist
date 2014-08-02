part of circlebinder_rpc;

class RpcChecklistGet {

  static final RpcChecklistGet _instance = new RpcChecklistGet._();

  factory RpcChecklistGet() {
    return _instance;
  }

  RpcChecklistGet._();

  Future<String> dispatch(Map requestParameters) {
    if (!requestParameters.containsKey('version')) {
      return new InvalidResponseMethod().run(requestParameters);
    }

    RpcMethod method;
    switch (requestParameters['version']) {
      case 1:
        method = new ChecklistGetV1();
        break;
      default:
        method = new InvalidResponseMethod();
    }

    SchemaValidator validator = new SchemaValidator(method.requestSchema(), requestParameters);
    if (!validator.isValid()) {
      method = new InvalidResponseMethod();
    }

    return method.run(validator.getValidParameters());
  }

}

class ChecklistGetV1 implements RpcMethod {

  @override Map<String, RpcSchemaFragment> requestSchema()
      => new RpcSchemaBuilder()
          .add('circle_id_list', RpcSchemaFragmentV1.circleIdList())
          .schema;

  @override Future<String> run(Map requestParameters) {
    return new Future((){
      return {"ChecklistGetV1": requestParameters};
    });
  }

}

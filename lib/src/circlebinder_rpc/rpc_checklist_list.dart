part of circlebinder_rpc;

class RpcChecklistList {

  static final RpcChecklistList _instance = new RpcChecklistList._();

  factory RpcChecklistList() {
    return _instance;
  }

  RpcChecklistList._();

  Future<String> dispatch(Map requestParameters) {
    if (!requestParameters.containsKey('version')) {
      return new InvalidResponseMethod().run(requestParameters);
    }

    RpcMethod method;
    switch (requestParameters['version']) {
      case 1:
        method = new ChecklistListV1();
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

class ChecklistListV1 implements RpcMethod {

  @override Map<String, RpcSchemaFragment> requestSchema()
      => new RpcSchemaBuilder()
          .add('paging', RpcSchemaFragmentV1.paging())
          .schema;

  @override Future<String> run(Map requestParameters) {
    return new Future((){
      return {"ChecklistListV1": requestParameters};
    });
  }

}

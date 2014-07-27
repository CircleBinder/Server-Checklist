part of rpc_dispatcher;

class RpcChecklistDelete {

  static RpcChecklistDelete _instance = new RpcChecklistDelete._();

  factory RpcChecklistDelete() {
    return _instance;
  }

  RpcChecklistDelete._();

  Future<String> dispatch({version, checklist_id}) {
    if (version == null || checklist_id == null) {
      return _invalidResponse();
    }

    switch (version) {
      case "1":
        return _v1(checklist_id);
      default:
        return _invalidResponse();
    }
  }

  Future<String> _invalidResponse() {
    return new Future((){
      return "rpc_checklist_delete: Invalid request!";
    });
  }

  Future<String> _v1(int checklist_id) {
    return new Future((){
      return "rpc_checklist_delete_v1: checklist_id => ${checklist_id}";
    });
  }

}
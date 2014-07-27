part of rpc_dispatcher;

class RpcChecklistUpdate {

  static RpcChecklistUpdate _instance = new RpcChecklistUpdate._();

  factory RpcChecklistUpdate() {
    return _instance;
  }

  RpcChecklistUpdate._();

  Future<String> dispatch({version, title, checklist_id, circle_id_list}) {
    if (version == null || title == null || checklist_id == null || circle_id_list == null) {
      return _invalidResponse();
    }

    switch (version) {
      case "1":
        return _v1(checklist_id, title, circle_id_list);
      default:
        return _invalidResponse();
    }
  }

  Future<String> _invalidResponse() {
    return new Future((){
      return "rpc_checklist_update: Invalid request!";
    });
  }

  Future<String> _v1(int checklist_id, String title, List circle_id_list) {
    return new Future((){
      return "rpc_checklist_update_v1: title => ${title}, circle_id_list => ${circle_id_list}";
    });
  }

}
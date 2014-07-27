part of rpc_dispatcher;

class RpcChecklistCreate {

  static RpcChecklistCreate _instance = new RpcChecklistCreate._();

  factory RpcChecklistCreate() {
    return _instance;
  }

  RpcChecklistCreate._();

  Future<String> dispatch({version, title, circle_id_list}) {
    if (version == null || title == null || circle_id_list == null) {
      return _invalidResponse();
    }

    switch (version) {
      case "1":
        return _v1(title, circle_id_list);
      default:
        return _invalidResponse();
    }
  }

  Future<String> _invalidResponse() {
    return new Future((){
      return "rpc_checklist_create: Invalid request!";
    });
  }

  Future<String> _v1(String title, List circle_id_list) {
    return new Future((){
      return "rpc_checklist_create_v1: title => ${title}, circle_id_list => ${circle_id_list}";
    });
  }

}

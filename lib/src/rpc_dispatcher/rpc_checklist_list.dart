part of rpc_dispatcher;

class RpcChecklistList {

  static final RpcChecklistList _instance = new RpcChecklistList._();

  factory RpcChecklistList() {
    return _instance;
  }

  RpcChecklistList._();

  Future<String> dispatch({version, page, per_page}) {
    if (version == null) {
      return _invalidResponse();
    }
    page = page != null ? page : 1;
    per_page = per_page != null ? per_page : 50;
    switch (version) {
      case '1':
        return _v1(page, per_page);
      default:
        return _invalidResponse();
    }
  }

  Future<String> _invalidResponse() {
    return new Future((){
      return "rpc_checklist_list: Invalid request!";
    });
  }

  Future<String> _v1(int page, int per_page) {
    return new Future((){
      return "checklist_list_v1: page => ${page}, per_page => ${per_page}";
    });
  }

}

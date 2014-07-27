library rpc_dispatcher;

import 'dart:async';

part 'rpc_checklist_list.dart';
part 'rpc_checklist_create.dart';
part 'rpc_checklist_update.dart';
part 'rpc_checklist_delete.dart';

class RpcDispatcher {

  checklist_list({version, page, per_page})
      => new RpcChecklistList().dispatch(version: version, page: page, per_page: per_page);

  checklist_create({version, title, circle_id_list})
      => new RpcChecklistCreate().dispatch(version: version, title: title, circle_id_list: circle_id_list);

  checklist_update({version, title, checklist_id, circle_id_list})
      => new RpcChecklistUpdate().dispatch(version: version, checklist_id: checklist_id, circle_id_list: circle_id_list);

  checklist_delete({version, checklist_id})
      => new RpcChecklistDelete().dispatch(version: version, checklist_id: checklist_id);

}

part of circlebinder_rpc;

class RpcDispatcher {

  checklist_get({version, circle_id_list})
      => new RpcChecklistGet().dispatch({
          "version": version,
          "circle_id_list": circle_id_list,
      });

  checklist_create({version, summary, circle_id_list})
      => new RpcChecklistCreate().dispatch({
          "version": version,
          "summary": summary,
          "circle_id_list": circle_id_list
      });

}



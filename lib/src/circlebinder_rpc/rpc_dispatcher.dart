part of circlebinder_rpc;

class RpcDispatcher {

  checklist_list({version, paging})
      => new RpcChecklistList().dispatch({
          "version": version,
          "paging": paging,
      });

  checklist_create({version, summary, circle_id_list})
      => new RpcChecklistCreate().dispatch({
          "version": version,
          "summary": summary,
          "circle_id_list": circle_id_list
      });

  checklist_update({version, checklist_id, summary, circle_id_list})
      => new RpcChecklistUpdate().dispatch({
          "version": version,
          "checklist_id": checklist_id,
          "summary": summary,
          "circle_id_list": circle_id_list,
      });

  checklist_delete({version, checklist_id})
      => new RpcChecklistDelete().dispatch({
          "version": version,
          "checklist_id": checklist_id
      });

}



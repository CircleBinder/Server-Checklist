library RpcDispatcher;

import 'dart:convert' show JSON;

class RpcDispatcher {

  checklist_list({page, per_page}) => [page,per_page].join(",");

  checklist_create({title, circle_id_list}) => [title, circle_id_list].join(",");

  checklist_update({title, checklist_id, circle_id_list}) => [title, checklist_id, circle_id_list].join(",");

  checklist_delete({checklistId}) => [checklistId].join(",");

}

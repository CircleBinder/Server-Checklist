part of circlebinder_rpc;

class RpcSchemaFragmentV1 {

  static Map<String, RpcSchemaFragment> paging() => {
      "page": new RpcSchemaFragment(required: false, defaultValue: 1),
      "per_page": new RpcSchemaFragment(required: false, defaultValue: 50),
  };

  static Map<String, RpcSchemaFragment> checklistSummary() => {
      "title": new RpcSchemaFragment(required: true, sampleValue: "お気に入り"),
  };

  static Map<String, RpcSchemaFragment> circleIdList() => {
      "items": new RpcSchemaFragment(required: false, defaultValue: [], sampleValue: [1,2,3,4,5]),
  };

  static Map<String, RpcSchemaFragment> checklistId() => {
      "item": new RpcSchemaFragment(required: true, sampleValue: 42),
  };

}

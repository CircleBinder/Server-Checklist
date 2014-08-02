part of circlebinder_rpc;

class RpcSchemaFragmentV1 {

  static Map<String, RpcSchemaFragment> checklistSummary() => {
      "title": new RpcSchemaFragment(required: true, sampleValue: "お気に入り"),
  };

  static Map<String, RpcSchemaFragment> circleIdList() => {
      "items": new RpcSchemaFragment(required: false, defaultValue: [], sampleValue: [1,2,3,4,5]),
  };

}

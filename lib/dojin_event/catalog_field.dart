part of dojin_event;

class CatalogFields extends Object with Exportable {

  @export List<String> fields;

  CatalogFields(List<String> fields) {
    this.fields = fields;
  }

  @override
  String toJson()
      => new ObjectSerializer().toJsonFromList(fields);

}

part of dojin_event;

class Event extends Object with Exportable {

  @export int event_id;
  @export String name;
  @export EventDate event_date;
  @export CatalogFields catalog_fields;

  Event(int event_id, String name, EventDate event_date, CatalogFields catalog_fields) {
    this.event_id = event_id;
    this.name = name;
    this.event_date = event_date;
    this.catalog_fields = catalog_fields;
  }

}

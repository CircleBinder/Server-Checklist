part of dojin_event;

class Circle extends Object with Exportable {

  @export int circle_id;
  @export int event_id;
  @export String name;
  @export CircleOwner owner;
  @export CircleHomepageList links;

  Circles(int circle_id, int event_id, String name, CircleOwner owner, [CircleHomepageList links]) {
    this.circle_id = circle_id;
    this.event_id = event_id;
    this.name = name;
    this.owner = owner;
    this.links = links;
  }

}

class CircleList extends Object with Exportable {

  @export List<Circle> circles;

  @override
  String toJson()
      => new ObjectSerializer().toJsonFromList(circles);
}

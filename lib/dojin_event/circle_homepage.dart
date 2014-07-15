part of dojin_event;

class CircleHomepage extends Object with Exportable {

  @export final String url;

  CircleHomepage(String url) : this.url = url;

}

class CircleHomepageList extends Object with Exportable {

  @export final List<CircleHomepage> links;

  CircleHomepageList(List<CircleHomepage> links) : this.links = links;

  @override
  String toJson()
      => new ObjectSerializer().toJsonFromList(links);

}

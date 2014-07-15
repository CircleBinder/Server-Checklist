part of dojin_event;

class Checklist extends Object with Exportable {

  @export int checklist_id;
  @export Event event;
  @export String title;
  @export ChecklistCircles circle_list;

  Checklist(int checklist_id, Event event, String title, ChecklistCircles circle_list) {
    this.checklist_id = checklist_id;
    this.event = event;
    this.title = title;
    this.circle_list = circle_list;
  }

}

class ChecklistCircles extends Object with Exportable {

  @export List<Circle> circles;

  ChecklistCircles(List<Circle> circles) {
    this.circles = circles;
  }

}

part of dojin_event;

class EventDate extends Object with Exportable {

  @export int start_epoch_time;
  @export int end_epoch_time;

  EventDate(int start_epoch_time, int end_epoch_time) {
    this.start_epoch_time = start_epoch_time;
    this.end_epoch_time = end_epoch_time;
  }

}

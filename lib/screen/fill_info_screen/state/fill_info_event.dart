abstract class FillInfoEvent {}

class FillInfoSearchEvent extends FillInfoEvent {
  final String data;
  FillInfoSearchEvent(this.data);
}

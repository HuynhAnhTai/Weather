class PopUpEvent {}

class PopUpShowEvent extends PopUpEvent {
  final String title, content;

  PopUpShowEvent(this.title, this.content);
}

class PopUpHideEvent extends PopUpEvent {}

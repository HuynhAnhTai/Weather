import 'package:equatable/equatable.dart';

enum ErrorType { network, other }

class PopUpState extends Equatable {
  final bool isShow;
  final String title;
  final String mess;
  final ErrorType? errorType;

  PopUpState(this.isShow, this.title, this.mess, {this.errorType});

  @override
  List<Object?> get props => [isShow, this.title, this.mess];
}

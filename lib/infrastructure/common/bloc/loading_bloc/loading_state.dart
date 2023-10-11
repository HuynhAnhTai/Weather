import 'package:equatable/equatable.dart';

class LoadingState extends Equatable {
  final bool isShow;

  LoadingState(this.isShow);

  @override
  List<Object?> get props => [isShow];
}

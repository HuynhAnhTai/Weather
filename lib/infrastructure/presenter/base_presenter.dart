import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BasePresenter<T> {
  late BuildContext context;

  List<BlocProvider> get useCases;

  late T? view;
}

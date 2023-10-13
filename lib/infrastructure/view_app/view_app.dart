import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather/infrastructure/presenter/base_presenter.dart';

class ViewApp<T extends BasePresenter> extends StatelessWidget {
  const ViewApp({super.key, required this.child, required this.presenter});

  final T presenter;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => presenter..context = context,
      lazy: false,
      child: presenter.useCases.isEmpty
          ? this.child
          : MultiBlocProvider(providers: presenter.useCases, child: this.child),
    );
  }
}

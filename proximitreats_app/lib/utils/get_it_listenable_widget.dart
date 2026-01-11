import 'package:flutter/material.dart';
import 'package:listenable_widget/listenable_widget.dart';
import 'package:proximitreats/service_locator.dart';

abstract class GetItListenableWidget<T extends ChangeNotifier, P1, P2>
    extends ListenableWidget<T> {
  const GetItListenableWidget({super.key, this.param1, this.param2});

  final P1? param1;
  final P2? param2;

  @override
  T create(BuildContext context) => sl<T>(param1: param1, param2: param2);
}

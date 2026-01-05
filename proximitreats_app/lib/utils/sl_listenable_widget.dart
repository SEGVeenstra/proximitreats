import 'package:flutter/material.dart';
import 'package:listenable_widget/listenable_widget.dart';
import 'package:proximitreats/service_locator.dart';

abstract class SlListenableWidget<T extends ChangeNotifier>
    extends ListenableWidget<T> {
  const SlListenableWidget({super.key});

  @override
  T create(BuildContext context) => sl<T>();
}

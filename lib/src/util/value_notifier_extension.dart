import 'dart:async';

import 'package:flutter/foundation.dart';

extension ValueNotifierExtension<T> on ValueNotifier<T> {
  StreamController<T> asStreamController({
    Function? onListen,
    Function? onCancel,
  }) {
    late StreamController<T> controller;

    void listener() => controller.add(value);

    controller = StreamController<T>.broadcast(
      onListen: () {
        addListener(listener);
        onListen?.call();
      },
      onCancel: () {
        removeListener(listener);
        onCancel?.call();
      },
    );

    return controller;
  }
}

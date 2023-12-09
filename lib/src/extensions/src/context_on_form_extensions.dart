import 'package:flutter/material.dart';

extension FocusExtension on BuildContext {
  get resetFocus => FocusScope.of(this).requestFocus(FocusNode());

  get hasFocus => FocusScope.of(this).hasFocus;

  get unFocus => FocusScope.of(this).unfocus();

  requestFocus({
    required FocusNode currentFocus,
    required FocusNode nextFocus,
  }) {
    currentFocus.unfocus();
    return FocusScope.of(this).requestFocus(nextFocus);
  }

  Offset get position {
    final RenderBox box = findRenderObject() as RenderBox;
    return box.localToGlobal(Offset.zero);
  }

  Size get size {
    final RenderBox box = findRenderObject() as RenderBox;
    return box.size;
  }
}

import 'package:flutter/material.dart';

bool loaderOpen = false;

extension Loader on BuildContext {
  Future<void> showHideLoader(bool showHide) async {
    if (showHide) {
      if (!loaderOpen) {
        loaderOpen = true;
        return showDialog(
          context: this,
          barrierDismissible: false,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    } else {
      if (loaderOpen) {
        loaderOpen = false;
        Navigator.of(this).pop();
      }
    }
  }
}

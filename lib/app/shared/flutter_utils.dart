import 'package:flutter/material.dart';

enum SnackBaseType {
  error, warning, info
}


Color snackTypeColor(SnackBaseType type){

  switch(type) {
    case SnackBaseType.error:
      return Colors.red;
      break;
    case SnackBaseType.warning:
      return Colors.yellow;
      break;
    case SnackBaseType.info:
      return Colors.blue;
      break;
    default:
      return Colors.black;
  }
}

class FlutterUtils {
  static showSnackBar(BuildContext context, {String message, SnackBar snackBar, SnackBaseType type = SnackBaseType.info}) {
    if (snackBar != null) {
      Scaffold.of(context).showSnackBar(snackBar);
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(message, style: TextStyle(fontSize: 18),),
        backgroundColor: snackTypeColor(type),
      ));
    }
  }
}

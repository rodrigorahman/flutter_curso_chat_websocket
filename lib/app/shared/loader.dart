import 'package:flutter/material.dart';

extension Loader on BuildContext {
  Future<void> showHideLoader(bool showHide) async{
    if(showHide) {
      return showDialog(
        context: this,
        barrierDismissible: false,
        child: Center(
          child: CircularProgressIndicator(),
        ));
    }else {
      Navigator.of(this).pop();  
    }
    
  }

}

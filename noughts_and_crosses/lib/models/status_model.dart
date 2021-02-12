// Model for status
// This is so that we can update the status

import 'package:flutter/material.dart';
import '../screens/constants.dart';

class StatusModel extends ChangeNotifier{
  // Private internal state of the Status Bar. Stores current status.
  String _status = p1Text;

  // Getter function: Fetch current status (public)
  String get statusText => _status;

  // Setter function: Sets the current status (public)
  set statusText(String text){
    _status = text;
    notifyListeners();
  }

  void reset() {
    _status = p1Text;
    notifyListeners();
    return;
  }
}

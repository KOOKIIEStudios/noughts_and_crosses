// UI-component for status message
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:provider/provider.dart';
// Internal
import '../models/status_model.dart';

class Status extends StatefulWidget {
  @override
  StatusState createState() {
    return new StatusState();
  }
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return _status();
  }

  Widget _status() {
    return Consumer<StatusModel>(
      builder: (context, status, child) {
        return Text(
          status.statusText,
        );
      },
    );
  }
}

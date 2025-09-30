import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'key_set_widget.dart' show KeySetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KeySetModel extends FlutterFlowModel<KeySetWidget> {
  ///  State fields for stateful widgets in this component.

  final keySetShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    keySetShortcutsFocusNode.dispose();
  }
}

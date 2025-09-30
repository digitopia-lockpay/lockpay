import '/components/generate_otp/generate_otp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'saved_keys_widget.dart' show SavedKeysWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedKeysModel extends FlutterFlowModel<SavedKeysWidget> {
  ///  State fields for stateful widgets in this component.

  final savedKeysShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    savedKeysShortcutsFocusNode.dispose();
  }
}

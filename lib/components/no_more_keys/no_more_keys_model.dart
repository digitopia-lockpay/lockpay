import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'no_more_keys_widget.dart' show NoMoreKeysWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NoMoreKeysModel extends FlutterFlowModel<NoMoreKeysWidget> {
  ///  State fields for stateful widgets in this component.

  final noMoreKeysShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    noMoreKeysShortcutsFocusNode.dispose();
  }
}

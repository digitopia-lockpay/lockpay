import '/components/face_id/face_id_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'set_face_id_widget.dart' show SetFaceIdWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetFaceIdModel extends FlutterFlowModel<SetFaceIdWidget> {
  ///  State fields for stateful widgets in this component.

  final setFaceIdShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setFaceIdShortcutsFocusNode.dispose();
  }
}

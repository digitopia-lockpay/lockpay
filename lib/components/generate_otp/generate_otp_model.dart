import '/components/otp/otp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'generate_otp_widget.dart' show GenerateOtpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenerateOtpModel extends FlutterFlowModel<GenerateOtpWidget> {
  ///  State fields for stateful widgets in this component.

  final generateOtpShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    generateOtpShortcutsFocusNode.dispose();
  }
}

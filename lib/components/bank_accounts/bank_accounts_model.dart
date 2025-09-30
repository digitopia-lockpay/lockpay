import '/components/generate_otp/generate_otp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'bank_accounts_widget.dart' show BankAccountsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BankAccountsModel extends FlutterFlowModel<BankAccountsWidget> {
  ///  State fields for stateful widgets in this component.

  final bankAccountsShortcutsFocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bankAccountsShortcutsFocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email';
    }
    return null;
  }

  // State field(s) for mobilenumber widget.
  FocusNode? mobilenumberFocusNode;
  TextEditingController? mobilenumberTextController;
  String? Function(BuildContext, String?)? mobilenumberTextControllerValidator;
  String? _mobilenumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 11) {
      return 'Requires 11 digits';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^(010|011|012|015)[0-9]{8}\$').hasMatch(val)) {
      return 'Invalid mobile number';
    }
    return null;
  }

  // State field(s) for nationalid widget.
  FocusNode? nationalidFocusNode;
  TextEditingController? nationalidTextController;
  String? Function(BuildContext, String?)? nationalidTextControllerValidator;
  String? _nationalidTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 14) {
      return 'Requires 14 digits';
    }
    if (val.length > 14) {
      return 'Requires 14 digits';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    mobilenumberTextControllerValidator = _mobilenumberTextControllerValidator;
    nationalidTextControllerValidator = _nationalidTextControllerValidator;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    mobilenumberFocusNode?.dispose();
    mobilenumberTextController?.dispose();

    nationalidFocusNode?.dispose();
    nationalidTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'face_id_model.dart';
export 'face_id_model.dart';

class FaceIdWidget extends StatefulWidget {
  const FaceIdWidget({super.key});

  @override
  State<FaceIdWidget> createState() => _FaceIdWidgetState();
}

class _FaceIdWidgetState extends State<FaceIdWidget> {
  late FaceIdModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaceIdModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 4000,
        ),
      );
      Navigator.pop(context);
      if (FFAppState().cardReceived == false) {
        context.goNamed(
          HomeWidget.routeName,
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      } else {
        context.goNamed(
          HomeCardsWidget.routeName,
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90.0),
                  bottomRight: Radius.circular(90.0),
                  topLeft: Radius.circular(90.0),
                  topRight: Radius.circular(90.0),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Lottie.asset(
                'assets/jsons/FaceID_Green.json',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.fill,
                repeat: false,
                animate: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

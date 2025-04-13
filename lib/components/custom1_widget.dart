import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom1_model.dart';
export 'custom1_model.dart';

class Custom1Widget extends StatefulWidget {
  const Custom1Widget({super.key});

  @override
  State<Custom1Widget> createState() => _Custom1WidgetState();
}

class _Custom1WidgetState extends State<Custom1Widget> {
  late Custom1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Custom1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Launching Soon!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Inter Tight',
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          'Our rocket is preparing for takeoff. Get ready for an amazing journey through space!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: Color(0xFFCCCCCC),
                letterSpacing: 0.0,
                lineHeight: 1.5,
              ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x33FFFFFF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COUNTDOWN',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF8A8DBA),
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Text(
                        'T-00:05:32',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter Tight',
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.rocket,
                    color: Color(0xFF4D9FFF),
                    size: 32.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}

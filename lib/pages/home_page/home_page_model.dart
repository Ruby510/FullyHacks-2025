import '/components/custom1_widget.dart';
import '/components/custom2_widget.dart';
import '/components/custom3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Custom1 component.
  late Custom1Model custom1Model;
  // Model for Custom2 component.
  late Custom2Model custom2Model;
  // Model for Custom3 component.
  late Custom3Model custom3Model;

  @override
  void initState(BuildContext context) {
    custom1Model = createModel(context, () => Custom1Model());
    custom2Model = createModel(context, () => Custom2Model());
    custom3Model = createModel(context, () => Custom3Model());
  }

  @override
  void dispose() {
    custom1Model.dispose();
    custom2Model.dispose();
    custom3Model.dispose();
  }
}

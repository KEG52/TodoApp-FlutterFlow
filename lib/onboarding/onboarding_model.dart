import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profphoto = false;
  FFUploadedFile uploadedLocalFile_profphoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_profphoto = '';

  // State field(s) for name-onboarding widget.
  FocusNode? nameOnboardingFocusNode;
  TextEditingController? nameOnboardingTextController;
  String? Function(BuildContext, String?)?
      nameOnboardingTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameOnboardingFocusNode?.dispose();
    nameOnboardingTextController?.dispose();
  }
}

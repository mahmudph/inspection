import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class IndonesiaMobile extends RuleStructure implements RuleAbstract {
  IndonesiaMobile(InspectionCase inspectionCaseObject)
      : super(inspectionCaseObject);

  @override
  String? regex = r"^(08|62)([0,9,{10}])$";

  @override
  bool manualCheck() {
    return validateRegEx(regex, input, caseSensitive: false);
  }

  @override
  dynamic customMessage() {
    return trans('indonesian_mobile', {'name': name});
  }
}

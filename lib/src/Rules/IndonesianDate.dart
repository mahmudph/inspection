import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class IndonesianDate extends RuleStructure implements RuleAbstract {
  IndonesianDate(InspectionCase inspectionCaseObject)
      : super(inspectionCaseObject);

  @override
  String? regex =
      "^([0]?[1-9]|[1|2][0-9]|[3][0|1])[-]([0]?[1-9]|[1][0-2])[-]([0-9]{4})\$";

  @override
  bool manualCheck() {
    return validateRegEx(regex, input, caseSensitive: false);
  }

  @override
  dynamic customMessage() {
    return trans('indonesian_date', {'name': name});
  }
}

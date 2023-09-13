import 'package:flutter/material.dart';

class EligiblityCheckProvider extends ChangeNotifier {
  String _eligiblityMessage = "";
  bool? _isEligible ;

  String get eligiblityMessage => _eligiblityMessage;
  bool? get isEligible => _isEligible;

  void checkEligiblity(int age) {
    if (age > 18) {
      eligibleForLicense();
    } else {
      nonEligibleForLicence();
    }
  }

  void eligibleForLicense() {
    _eligiblityMessage = 'you are applicable for licence';
    _isEligible = true;

    notifyListeners();
  }

  void nonEligibleForLicence() {
    _eligiblityMessage = 'you are not applicable for licence';
    _isEligible = false;

    notifyListeners();
  }
}

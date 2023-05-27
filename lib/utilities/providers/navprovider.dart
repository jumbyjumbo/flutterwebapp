import 'package:flutter/foundation.dart';

import '../../pageoptions.dart';

class NavProvider extends ChangeNotifier {
  final List<int> _backNavigationHistory = [];
  final List<int> _forwardNavigationHistory = [];

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void navigateTo(int index) {
    if (index != _currentIndex && index < getPageOptions().length) {
      _backNavigationHistory.add(_currentIndex);
      _currentIndex = index;
      _forwardNavigationHistory
          .clear(); // clear forward history when navigating to a new page
      notifyListeners();
    }
  }

  void navigateBack() {
    if (_backNavigationHistory.isNotEmpty) {
      _forwardNavigationHistory.add(
          _currentIndex); // add current page to forward history before going back
      _currentIndex = _backNavigationHistory.removeLast();
      notifyListeners();
    }
  }

  void navigateNext() {
    if (_forwardNavigationHistory.isNotEmpty) {
      _backNavigationHistory.add(
          _currentIndex); // add current page to back history before going forward
      _currentIndex = _forwardNavigationHistory.removeLast();
      notifyListeners();
    }
  }
}

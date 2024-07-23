import 'package:flutter/foundation.dart';

class AppData with ChangeNotifier {
  List<String> _categories = [
    '#Career',
    '#Projects',
    '#UX/UI',
    '#Branding',
    '#Data',
    '#Server',
    '#Flutter'
  ];

  List<String> _liveClasses = [
    'Class 1', 
    'Class 2', 
    'Class 3', 
    'Class 4', 
    'Class 5'
  ];

  List<String> get categories => _categories;

  List<String> get liveClasses => _liveClasses;

  // You can add methods to modify the state here if needed
}

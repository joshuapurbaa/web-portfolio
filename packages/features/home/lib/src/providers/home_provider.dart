import 'package:flutter/cupertino.dart';
import 'package:home/src/data/certificate_path_model.dart';
import 'package:home/src/data/data.dart';

import 'package:home/src/data/portfolio_path_model.dart';

class HomeProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool get isVisible => _isVisible;

  final List<PortfolioPath> _portfolioPathList = [];
  List<PortfolioPath> get portfolioPathList => _portfolioPathList;

  final List<CertificatePath> _certificatePathList = [];
  List<CertificatePath> get certificatePathList => _certificatePathList;

  int _activeIndex = 0;
  int get activeIndex => _activeIndex;

  final PageController _dialogViewController = PageController();
  PageController get dialogViewController => _dialogViewController;

  final PageController _certificateController = PageController();
  PageController get certificateController => _certificateController;

  int _helperIndex = 0;
  int get helperIndex => _helperIndex;

  void getIndex(int index) {
    _helperIndex = index;
    notifyListeners();
  }

  void onTapped() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void fetchData() {
    for (final data in dataPortfolio) {
      _portfolioPathList.add(data);
    }

    for (final data in certificateData) {
      _certificatePathList.add(data);
    }
    notifyListeners();
  }

  void changeValue(int value) {
    _activeIndex = value;

    notifyListeners();
  }

  @override
  void dispose() {
    _dialogViewController.dispose();
    _certificateController.dispose();
    super.dispose();
  }
}

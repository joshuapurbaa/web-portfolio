import 'package:flutter/cupertino.dart';
import 'package:home/src/data/data.dart';

import '../data/portfolio_path_model.dart';

class HomeProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool get isVisible => _isVisible;

  final List<PortfolioPath> _portfolioPathList = [];
  List<PortfolioPath> get portfolioPathList => _portfolioPathList;

  int _activeIndex = 0;
  int get activeIndex => _activeIndex;

  final PageController _controller = PageController();
  PageController get controller => _controller;

  void onTapped() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void fetchData() {
    for (var data in dataPortfolio) {
      _portfolioPathList.add(data);
    }
    notifyListeners();
  }

  void changeValue(int value) {
    _activeIndex = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wechat_book/card_free.dart';
import 'package:flutter_wechat_book/card_recommend.dart';
import 'package:flutter_wechat_book/card_share.dart';
import 'package:flutter_wechat_book/card_special.dart';
import 'package:flutter_wechat_book/custom_appbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
  const ContentPager(
      {Key? key,
      required this.onPageChanged,
      required this.contentPagerController})
      : super(key: key);

  @override
  State<ContentPager> createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  static final List<Color> _colors = [
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.red
  ];

  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(),
        Expanded(
            child: PageView(
          onPageChanged: widget.onPageChanged,
          controller: _pageController,
          children: [
            _warpItem(const CardRecommend()),
            _warpItem(const CardShare()),
            _warpItem(const CardFree()),
            _warpItem(const CardSpecial()),
          ],
        ))
      ],
    );
  }

  Widget _warpItem(Widget widget) {
    return Padding(padding: const EdgeInsets.all(10), child: widget);
  }

  // 设置状态栏
  _statusBar() {
    SystemUiOverlayStyle uiOverlayStyle = const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

// 内容区域控制器
class ContentPagerController {
  PageController _pageController = PageController();

  void jumpToPage(int page) {
    _pageController.jumpToPage(page);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/base_card.dart';

class CardRecommend extends BaseCard {
  const CardRecommend({Key? key}) : super(key: key);

  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subtitleColor = const Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  subtitle(String title) {
    return super.subtitle('送你一天无限卡.全场书籍免费读 >');
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      constraints: const BoxConstraints.expand(),
      child: Image.network(
          'http://img.fechen.cn/uploadfile/static/2022/03/08/jay_ablum.png',
          fit: BoxFit.cover),
    ));
  }
}

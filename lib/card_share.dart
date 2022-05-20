import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/base_card.dart';

class CardShare extends BaseCard {
  const CardShare({Key? key}) : super(key: key);

  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  topTitle(String title) {
    return super.topTitle('分享得联名卡');
  }

  @override
  topSubtitle() {
    return const Padding(
        padding: EdgeInsets.only(left: 5, bottom: 5),
        child: Text('/ 第十五期', style: TextStyle(fontSize: 10)));
  }

  @override
  subtitle(String title) {
    return super.subtitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      color: const Color(0xffa295ae),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
                child: Image.network(
              'http://img.fechen.cn/uploadfile/static/2022/03/08/ed49d339aa5785a0c5ee52655d21006d.jpeg',
              fit: BoxFit.fill,
            )),
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: bottomTitle('20876687人 已参与活动'))
          ],
        ),
      ),
    ));
  }
}

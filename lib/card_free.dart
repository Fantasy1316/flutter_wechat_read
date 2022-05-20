import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/base_card.dart';

class CardFree extends BaseCard {
  const CardFree({Key? key}) : super(key: key);

  @override
  _CardFreeState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {"title": "Jay", "cover": "jay.jpeg", "public_date": "2000-11-07"},
  {"title": "范特西", "cover": "ftc.jpeg", "public_date": "2001-09-14"},
  {"title": "八度空间", "cover": "bdkj.jpeg", "public_date": "2002-07-18"},
  {"title": "叶惠美", "cover": "yhm.jpeg", "public_date": "2003-07-31"},
  {"title": "七里香", "cover": "qlx.jpeg", "public_date": "2004-08-03"},
  {"title": "十一月的肖邦  ", "cover": "syydxb.jpeg", "public_date": "2005-11-01"},
];

class _CardFreeState extends BaseCardState {
  @override
  topTitle(String title) {
    return super.topTitle('免费听书馆');
  }

  @override
  subtitle(String title) {
    return super.subtitle('第 108 期');
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Expanded(child: _bookListItem()),
          Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _bottombutton())
        ],
      ),
    ));
  }

  Widget _bookListItem() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 15,
      childAspectRatio: 0.58,
      padding: const EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  _bottombutton() {
    return SizedBox(
      width: 200,
      height: 42,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {},
          child: const Text('免费领取',
              style: TextStyle(fontSize: 18, color: Colors.white))),
    );
  }

  Widget _item(item) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
                'http://img.fechen.cn/uploadfile/static/2022/03/08/${item['cover']}',
                fit: BoxFit.cover),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38),
              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(3, 3, 3, 2),
                  decoration: const BoxDecoration(color: Colors.black54),
                  child: Text('发行时间：${item['public_date']}',
                      style: const TextStyle(fontSize: 6, color: Colors.white)),
                ))
          ],
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(4),
          child: Text(
            item['title'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}

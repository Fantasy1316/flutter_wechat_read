import 'package:flutter/material.dart';
import 'package:flutter_wechat_book/base_card.dart';

class CardSpecial extends BaseCard {
  const CardSpecial({Key? key}) : super(key: key);

  @override
  _CardSpacialState createState() => _CardSpacialState();
}

class _CardSpacialState extends BaseCardState {
  @override
  void initState() {
    bottomTitleColor = Colors.grey;
    super.initState();
  }

  @override
  topContent() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(66, 36, 66, 30),
          decoration: const BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20, // 模糊半径
                  offset: Offset(0, 10) // 阴影偏移量 (水平偏移, 垂直偏移)
                  )
            ]),
            child: Image.network(
                'http://img.fechen.cn/uploadfile/static/2022/03/08/xzzjl-ep.jpeg'),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          decoration: const BoxDecoration(color: Color(0xfff7f3ea)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('寻找周杰伦EP',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff473b25))),
                    Text(
                      '发行时间：2003-11-13',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 160, 152, 138)),
                    )
                  ],
                ),
              ),
              Container(
                // margin: const EdgeInsets.only(left: 12),
                // padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ae)])),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('分享免费领',
                      style: TextStyle(fontSize: 14, color: Color(0xff4f3b1a))),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            ListTile(
              title: Text(
                '轨迹（伴奏）',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text(
                '断了的弦（伴奏）',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        bottomTitle('更多好听专辑免费听 >')
      ],
    ));
  }
}

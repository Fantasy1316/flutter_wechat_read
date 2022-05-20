import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  const BaseCard({Key? key}) : super(key: key);

  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subtitleColor = Colors.grey;
  Color bottomTitleColor = Colors.white60;

  @override
  Widget build(BuildContext context) {
    // 裁切圆角
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [topContent(), bottomContent()],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 26, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [topTitle(''), topSubtitle()],
          ),
          subtitle('')
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  subtitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 12, color: subtitleColor),
      ),
    );
  }

  topTitle(String title) {
    return Text(title, style: const TextStyle(fontSize: 22));
  }

  topSubtitle() {
    return Container();
  }

  bottomTitle(String title) {
    return Text(title, style: TextStyle(fontSize: 12, color: bottomTitleColor));
  }
}

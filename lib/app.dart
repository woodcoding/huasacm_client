import 'package:flutter/material.dart';

import './widgets/bottomButton.dart';
import './widgets/bottomBarItem.dart';
import './page/home.dart';
import './page/problemList.dart';
import './page/judgeStatus.dart';
import './page/rankList.dart';
import './page/user.dart';


class HuasAcmApp extends StatefulWidget {
  @override
  _HuasAcmAppState createState() => _HuasAcmAppState();
}

class _HuasAcmAppState extends State<HuasAcmApp> {
  List<BottomBarButtonItem> _botBatIconButtons;
  int _botIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    ProblemListPage(),
    JudgeStatusPage(),
    RankListPage(),
    UserPage()
  ];

  @override
  void initState() {
    super.initState();
    _botBatIconButtons = botBatIconButtons;
  }

  @override
  Widget build(BuildContext context) {
    // 底部导航条
    final BottomNavigationBar botNavBar = BottomNavigationBar(
      items: _botBatIconButtons.map((btn){
        return btn.item;
      }).toList(),
      currentIndex: _botIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        setState((){
          _botIndex = index;
        });
      },
    );

    return MaterialApp(
      title: '湖南文理学院ACM编程助手',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('HUASACM编程助手'),
          elevation: 0.0,
        ),
        body: PageView.builder(
          itemBuilder: (BuildContext context, int index){
            return _pages[_botIndex];
          },
          itemCount: _pages.length,
          onPageChanged: (int index){
            setState(() {
              _botIndex = index;
            });
          },
        ),
        bottomNavigationBar: botNavBar,
      ),
    );
  }
}

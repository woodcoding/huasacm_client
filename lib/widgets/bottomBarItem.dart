import 'package:flutter/material.dart';

import '../widgets/bottomButton.dart';

 List<BottomBarButtonItem> botBatIconButtons = [
  new BottomBarButtonItem(
    title: '首页',
    icon: Icon(Icons.home, color: Colors.grey,),
    activeIcon: Icon(Icons.home, color: Colors.blue,),
  ),
  new BottomBarButtonItem(
    title: '题目',
    icon: Icon(Icons.view_list, color: Colors.grey,),
    activeIcon: Icon(Icons.view_list, color: Colors.blue,),
  ),
  new BottomBarButtonItem(
    title: '状态',
    icon: Icon(Icons.sync, color: Colors.grey,),
    activeIcon: Icon(Icons.sync, color: Colors.blue,),
  ),
  new BottomBarButtonItem(
    title: '排名',
    icon: Icon(Icons.format_list_numbered, color: Colors.grey,),
    activeIcon: Icon(Icons.format_list_numbered, color: Colors.blue,),
  ),
  new BottomBarButtonItem(
    title: '我的',
    icon: Icon(Icons.account_circle, color: Colors.grey,),
    activeIcon: Icon(Icons.account_circle, color: Colors.blue,),
  ),
];
import 'package:flutter/material.dart';


class BottomBarButtonItem{
  final BottomNavigationBarItem item;

  BottomBarButtonItem({Key key, String title, Icon icon, Icon activeIcon}):
    item = new BottomNavigationBarItem(
      title: Text(title),
      icon: icon,
      activeIcon: activeIcon,
    );
}


// BottomNavigationBar(
//   items: [
//     new BottomNavigationBarItem(
//       title: Text('首页'),
//       icon: Icon(Icons.home, color: Colors.grey,),
//       activeIcon: Icon(Icons.home, color: Colors.blue,),
//       backgroundColor: Colors.green,
//     ),
//     new BottomNavigationBarItem(
//       title: Text('题目'),
//       icon: Icon(Icons.view_list, color: Colors.grey,),
//       activeIcon: Icon(Icons.view_list, color: Colors.blue,),
//       backgroundColor: Colors.white,
//     ),
//     new BottomNavigationBarItem(
//       title: Text('状态'),
//       icon: Icon(Icons.sync, color: Colors.grey,),
//       activeIcon: Icon(Icons.sync, color: Colors.blue,),
//     ),
//     new BottomNavigationBarItem(
//       title: Text('排名'),
//       icon: Icon(Icons.format_list_numbered, color: Colors.grey,),
//       activeIcon: Icon(Icons.format_list_numbered, color: Colors.blue,),
//     ),
//     new BottomNavigationBarItem(
//       title: Text('我的'),
//       icon: Icon(Icons.account_circle, color: Colors.grey,),
//       activeIcon: Icon(Icons.account_circle, color: Colors.blue,),
//     ),
//   ],
//   currentIndex: _botIndex,
//   type: BottomNavigationBarType.fixed,
//   onTap: (int index){
//     print(index);
//     setState(() {
//       _botIndex = index;
//     });
//   },
// );

import 'package:flutter/material.dart';

import '../utils/internetTools.dart' show launchURL;

showContestDetailDialog(BuildContext context, String url){
    showDialog(
      context: context,
      child: new AlertDialog(
          title: new Text('是否打开比赛网址'),
          content: new Text(url),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('打开'),
              onPressed: (){
                launchURL(url);
              },
            )
          ],
        )
    );
  }
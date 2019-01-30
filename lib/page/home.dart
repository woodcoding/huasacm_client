import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:dio/dio.dart';

import '../widgets/contestDetailDialog.dart';
import '../model/contest.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<NetContest> listData;
  String netContestApi = "http://contests.acmicpc.info/contests.json";

  void _fetchNetContest(String apiUrl) async{
    try {
      Response response = await Dio().get(apiUrl);
      if(response.statusCode == 200) {
        List feeds = response.data;
        setState(() { 
          listData = feeds.map((item) => new NetContest.fromJson(item)).toList()..sort();
        });
      }
    }catch(e){
      return print(e);
    }
  }

  _buildContestItem(int i){
    NetContest netContest = listData[i];
    // = new NetContest().fromJson(listData[i]);
    return new ListTile(
      title: new Text(netContest.name),
      subtitle: new Text('${netContest.startTime}-${netContest.week}'),
      leading: Icon(Icons.style),
      onTap: (){
        String url = "${netContest.link}";
        Clipboard.setData(new ClipboardData(text: netContest.link));
        Fluttertoast.showToast(msg: "比赛网址已经复制到剪切板");
        showContestDetailDialog(context, netContest.link);
      }
    );
  }

  @override
  void initState() {
    super.initState();
    _fetchNetContest(netContestApi);
  }



  @override
  Widget build(BuildContext context) {
    if (listData == null) {
      return new Center(child: CircularProgressIndicator());
    } else {
      Widget listView = new ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) =>_buildContestItem(i),
      );
      return listView;
    }
  }
}
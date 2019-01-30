import 'package:flutter/material.dart';


//网络比赛信息模型
class NetContest implements Comparable<NetContest> {
  NetContest({
    this.id,
    this.oj,
    this.link,
    this.name,
    this.startTime,
    this.week,
    this.access: "",
  });

  final String id;
  final String oj;
  final String link;
  final String name;
  final String startTime;
  final String week;
  final String access;

  factory NetContest.fromJson(Map<String, dynamic> data){
    return NetContest(
      id: data['id'],
      oj: data['oj'],
      link: data['link'],
      name: data['name'],
      startTime: data['start_time'],
      week: data['week'],
      access: data['access'],
    );
  }

  int compareTo(NetContest cmp) {
    DateTime time1 = DateTime.parse(startTime);
    DateTime time2 = DateTime.parse(cmp.startTime);
    return time1.isBefore(time2) ? 1 : 0;
  }
}

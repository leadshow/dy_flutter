/**
 * @discripe: 鱼吧贴子推荐页(tab - 我的)
 */
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../base.dart';
import 'cardList.dart';

class MyConcern extends StatefulWidget {
  final headerAnimated;
  MyConcern({ this.headerAnimated });

  @override
  _MyConcern createState() => _MyConcern(headerAnimated);
}

class _MyConcern extends State<MyConcern> with DYBase {
  final headerAnimated;
  _MyConcern(this.headerAnimated);

  List<String> _myActive = ['鱼吧签到', '我的车队', '狼人杀'];
  GlobalKey _hourTitleKey = GlobalKey();
  double _scrollTop = 0;
  RefreshController _refreshController = RefreshController(initialRefresh: false);
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      var scrollTop = _scrollController.position.pixels;

      if (scrollTop < 0 || scrollTop >= _scrollController.position.maxScrollExtent) {
        return;
      }
      if (_scrollTop - scrollTop > 20) { // 向下滑动 ↓
        headerAnimated(-1);
        _scrollTop = scrollTop;
      } else if (scrollTop - _scrollTop > 20) {  // 向上滑动 ↑
        headerAnimated(1);
        _scrollTop = scrollTop;
      }
    });
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  // 下拉刷新
  void _onRefresh() async {

    _refreshController.refreshCompleted();
  }

  // 上拉加载
  void _onLoading() async {

    _refreshController.loadComplete();
  }

  // 渲染我的活动功能
  Widget _renderMyActive() {
    return Wrap(
      children: _myActive.asMap().map((i, item) {
        return MapEntry(
          i, Container(
            width: (MediaQuery.of(context).size.width - 20) / 4,
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: dp(16),
                    ),
                    child: Image.asset(
                      'images/bar/tab-$i.png',
                      width: dp(70),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: dp(8),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        color: Color(0xff333333)
                      ),
                    ),
                  ),
                ],
              ),
          ),
        );
      }).values.toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          // color: Color(0xfff3f3f3),
          child: SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            header: WaterDropHeader(),
            controller: _refreshController,
            onRefresh: _onRefresh,
            onLoading: _onLoading,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.all(0),
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: dp(15), left: dp(10), right: dp(10)),
                  child: _renderMyActive()
                ),
                Padding(
                  key: _hourTitleKey,
                  padding: EdgeInsets.only(
                    left: dp(15), right: dp(15), top: dp(5), bottom: dp(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/bar/day-title.png',
                        height: dp(16),
                      ),
                      Padding(padding: EdgeInsets.only(left: dp(6)),),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '每日斗鱼',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                      Image.asset(
                        'images/bar/usefulSelect.webp',
                        height: dp(25),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xfff3f3f3),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(dp(15)),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(dp(15)),
                          ),
                        ),
                        child: FishBarCardList(
                          hourTitleKey: _hourTitleKey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.only( left: dp(10), right: dp(8), top: dp(6), bottom: dp(6) ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(dp(20)),
                bottomLeft: Radius.circular(dp(20)),
              ),
              boxShadow: [
                BoxShadow(color: Color.fromARGB(50, 92, 92, 92), offset: Offset(dp(-1), dp(5)), blurRadius: dp(4), spreadRadius: dp(-2)),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/bar/hot-title.png',
                  height: dp(16),
                ),
                Padding(
                  padding: EdgeInsets.only(right: dp(5)),
                ),
                Text(
                  '斗鱼24小时精彩'
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
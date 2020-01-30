import 'package:boundries/home/render%20_list.dart';
import 'package:boundries/widgets.dart';
import 'package:flutter/material.dart';

class Countries extends StatefulWidget {

  Countries({Key key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();

}

class _CountriesState extends State<Countries>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerContainer,
          Expanded(
            child: DefaultTabController(
              length: 5,
              child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,

                    title: Text(
                      'Countries By Region', style: textMedium,
                    ),

                    bottom: PreferredSize( child: TabBar(
                            isScrollable: true,
                            unselectedLabelColor: Colors.white.withOpacity(0.3),
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(child: Text('Asia', style: textMedium)),
                              Tab(child: Text('Africa', style: textMedium)),
                              Tab(child: Text('Americas', style: textMedium)),
                              Tab(child: Text('Europe', style: textMedium)),
                              Tab(child: Text('Oceania', style: textMedium))
                            ]),
                        preferredSize: Size.fromHeight(20.0)),
                  ),

                  body: TabBarView(
                    children: <Widget>[
                      Container(child: ListPage(region: 'asia')),
                      Container(child: ListPage(region: 'africa')),
                      Container(child: ListPage(region: 'americas')),
                      Container(child: ListPage(region: 'europe')),
                      Container(child: ListPage(region: 'oceania')),
                    ],
                  )),

            ),
          )
        ],
      )),
    );
  }
}

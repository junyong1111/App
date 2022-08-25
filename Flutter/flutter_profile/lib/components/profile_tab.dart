import 'package:flutter/material.dart';

//StateFull : 상태가 있는 위젯 -> 상태에 따라 위젯이 변경된다.
class ProfileTab extends StatefulWidget {
  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin을 사용하면 탭을 눌렀을 때 애니메이션이 한 개일 때 사용
  TabController? _tabController; //_가 붙으면 dart에서는 private로 취급한다.
  // 반드시 초기화가 되어야 한다. 이 때 상태가 있는 위젯(StateFull)은 init생성자를 이용
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    // this에 들어오는 것은 SingleTickerProviderStateMixin인듯 ?
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController, // 꼭 놔야하는 속성이며 전역변수로 선언한다.
      tabs: [
        Tab(
            icon: Icon(
          Icons.directions_car,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.directions_transit,
          color: Colors.black,
        ))
      ],
    );
  }

  Widget _buildTabBarView() {
    //TabBar을 눌렀을 때 나오는 화면 설정
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.network(
            "https://picsum.photos/id/${index + 10}/200/200",
            scale: 0.3,
          );
        },
      ),
      Container(
        color: Colors.red,
      ),
    ]);
  }
}

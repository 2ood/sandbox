import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  
  @override
  _ProfileTabState createState() =>  _ProfileTabState();
  
  
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
 
  TabController? _tabController;
  
  @override 
  void initState () {
    super.initState();
    _tabController = new TabController(length :2,  vsync :this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children : [
        _buildTabBar(),
        Expanded(child : _buildTabBarView()),
      ],
    );
  }
  
  Widget _buildTabBar() {
  return TabBar(
    controller : _tabController,
    tabs : [
      Tab(icon: Icon(Icons.directions_car)),
      Tab(icon: Icon(Icons.directions_transit)),
     ],
   );
  }
  Widget _buildTabBarView() {
    return TabBarView(
      controller : _tabController,
      children : [
//         GridView(
//           gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount : 3),
//           crossAxisSpacing :  10,
//           mainAxisSpacing : 10,
//           children : [
//              Container(color : Colors.yellow);
//           ],
//         ),
          GridView.builder(
            itemCount : 20,
            gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount : 3,
              crossAxisSpacing : 10,
              mainAxisSpacing : 10,
            ),
            itemBuilder: (context, index) {
              return Image.network("https://picsum.photos/id/${index+1}/200/200",
                                  scale :0.3);
            } 
         ),
         Container(color : Colors.green),
      ],
    );
  }
 
}







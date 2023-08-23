//3 Create below screens with navigation
import 'package:flutter/material.dart';
import 'package:myflutterprograms/Module4/Ass3/login.dart';


class MyFoodScreen extends StatefulWidget {
  const MyFoodScreen({super.key});

  @override
  State<MyFoodScreen> createState() => _MyFoodScreenState();
}

class _MyFoodScreenState extends State<MyFoodScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 160,
                width: 800,
                child: Image.asset('image/food.jpeg',
                  alignment: const Alignment(0, 0),
                  colorBlendMode: BlendMode.lighten,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Colors.orange,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ]),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: const [
                 MyLogin(),
          
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

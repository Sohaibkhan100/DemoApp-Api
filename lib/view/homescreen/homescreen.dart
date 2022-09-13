import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/view/homescreen/allpost.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('lorem ipsum'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            text: "ALL POST",
          ),
          Tab(
            text: "PROFILE",
          ),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        const AllPost(),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListTile(
                leading: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(data[0]),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  data[1],
                ),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(data[2]),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                leading: Text(
                  'ZipCode',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  data[3],
                ),
              ),
              Divider(
                height: 1,
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: const Icon(Icons.add),
      ),
    ));
  }
}

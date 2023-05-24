import 'package:flutter/material.dart';
import 'package:twitter/pages/home/comp/post.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> drawerKey;
  const HomeScreen({required this.drawerKey, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                widget.drawerKey.currentState!.openDrawer();
              },
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 20),
                  ),
                ],
              ),
            );
            // return IconButton(
            //   icon: const Icon(
            //     Icons.bar_chart_rounded,
            //     color: Colors.black,
            //   ),
            //   onPressed: () => Scaffold.of(context).openDrawer(),
            // );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              color: Colors.black,
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              }),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       const CircleAvatar(
      //         backgroundImage: NetworkImage(
      //             'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
      //         radius: 15,
      //       ),
      //       Image.asset('assets/images/twitter.png', height: 30),
      //       const Icon(
      //         Icons.star_border,
      //         color: Colors.blue,
      //       ),
      //     ],
      //   ),
      // ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}

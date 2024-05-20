import 'package:flutter/material.dart';
import 'package:ping_webview_demo/webview_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"),),
      body: SafeArea(
        child:  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WebviewScreen(hasCookie: true,)));
              }, child: const Text("Ping Webview with cookie")),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WebviewScreen(hasCookie: false,)));
              }, child: const Text("Ping Webview without cookie"))
            ],
          )
        ),
      ),
    );
  }
}

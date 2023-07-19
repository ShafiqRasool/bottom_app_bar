import "package:flutter/material.dart";

class Dashboard extends StatelessWidget{
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body:const Center(
        child:Text("Dashboard"),
      ),
    );
  }

}

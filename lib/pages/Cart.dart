import "package:flutter/material.dart";

class Cart extends StatelessWidget{
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Cart"),),
      body:const Center(
        child:Text("Cart"),
      ),
    );
  }

}

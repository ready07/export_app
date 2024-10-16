import 'package:flutter/material.dart';

class OtkazmalarPage extends StatefulWidget {

  @override
  State<OtkazmalarPage> createState() => _OtkazmalarPageState();
}

class _OtkazmalarPageState extends State<OtkazmalarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("O'tkazmalar"),),
      body: const Center(child:Text('Otkazmalar uchun malumot yoq!')),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add_outlined),),
    );
  }
}

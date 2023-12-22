import 'package:flutter/material.dart';
import 'package:lab5/foodclass.dart';

class Foodpage extends StatefulWidget {
  const Foodpage({super.key});

  @override
  State<Foodpage> createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
  // ignore: non_constant_identifier_names
  List<Food> Foods = [];
  String foodvalue = "กรุณาเลือกอาหาร";

  @override
  void initState() {
    super.initState();
    Foods = Food.getFood();
  }

  // ignore: non_constant_identifier_names
  List<Widget> CreateRadioFood() {
    // ignore: non_constant_identifier_names
    List<Widget> Myfoods = [];
    for (var fd in Foods) {
      Myfoods.add(RadioListTile(
        title: Text(fd.thFood),
        subtitle: Text(fd.enFood),
        secondary: Text("${fd.price}บาท"),
        value: fd.value,
        groupValue: foodvalue,
        onChanged: (value) {
          setState(() {
            foodvalue = value;
          });
        },
      ));
    }

    return Myfoods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("55"),
      ),
    body: Column(
      children: [
        const Text("เลือกเมนู")
        ,Column(
          children: CreateRadioFood(),
        ),
        Text(foodvalue,style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 255, 16, 16)
        ),)
      ],
    ),
    );
  }
}

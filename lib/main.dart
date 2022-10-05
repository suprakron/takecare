import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
//กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("ปลาเผา", "500", "assets/images/01.jpg"),
    FoodMenu("หมูย่าง", "600", "assets/images/02.jpg"),
    FoodMenu("กุ้งทอด", "6000", "assets/images/03.jpg"),
    FoodMenu("หมึกย่าง", "5000", "assets/images/04.jpg")
  ];

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "ราคา" + food.price + "บาท",
                  style: TextStyle(fontSize: 20),
                ),
              );
            }));
  }
}

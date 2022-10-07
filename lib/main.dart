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
      theme: ThemeData(primarySwatch: Colors.purple),
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
  // List<FoodMenu> menu = [
  //   FoodMenu("ปลาเผา", "500", "assets/images/01.jpg"),
  //   FoodMenu("หมูย่าง", "600", "assets/images/02.jpg"),
  //   FoodMenu("กุ้งทอด", "6000", "assets/images/03.jpg"),
  //   FoodMenu("หมึกย่าง", "5000", "assets/images/04.jpg")
  // ];

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "บัญชีของฉัน",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ยอดคงเหลือ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(
                      "10000",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
              ),
              SizedBox(height: 10,),
                Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายรับ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(
                      "10000",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
              ),
                   SizedBox(height: 10,),
                Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายจ่าย",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(
                      "10000",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
              ),
               SizedBox(height: 10,),
                Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ค่าค้างชำระ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(
                      "10000",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

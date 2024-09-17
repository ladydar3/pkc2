import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ПКС 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget> [
            SizedBox(height:200,),
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                    child: Text("Авторизация", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                    ),
                  ),
            ),
            const Padding(
              padding:  EdgeInsets.all(16.0),
              child: TextField(decoration: InputDecoration( hintText: 'Логин',
                border: OutlineInputBorder(),
              ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration( hintText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(

                  checkColor: Colors.blue,
                  value: false,
                  onChanged: (value) {},
                  activeColor: Colors.blue,
                ),
                const Text("Запомнить меня", style: TextStyle(fontSize: 16),),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Войти'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 20),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Регистрация'),
                ),
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Восстановить пароль', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ]
      ),
    );
  }
}

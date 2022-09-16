import 'package:chat_app/controllers/home.contoller.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home view'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text('Home view body 1', style: AppTextStyle.regular14()),
            const Text('Home view body 2'),
            const Text('Home view body 3'),
            const Text('Home view body 4'),
            ElevatedButton(
              child: const Text('Elevated Button'),
              onPressed: () {},
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button'),
            ),
            const SizedBox(height: 15),
            IconButton(icon: const Icon(Icons.send), onPressed: () {}),
            const Icon(Icons.add_box),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined, size: 32),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 32),
            label: '',
          ),
        ],
      ),
    );
  }
}

class AppTextStyle {
  static regular14() {}
}

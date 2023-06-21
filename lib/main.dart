import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/login_screen.dart';
import 'screens/notes_screen.dart';
import 'screens/blog_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/badges_screen.dart';
import 'screens/habits_screen.dart';

void main() {
  runApp(MaterialApp(
    title: '40 Günde Alışkanlık',
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('40 Günde Alışkanlık')),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                HabitCard(
                  habitName: 'Abur Cubur Azaltmak',
                  habitIcon: Icons.fastfood,
                ),
                HabitCard(
                  habitName: 'Dil Öğrenme',
                  habitIcon: Icons.language,
                ),
                HabitCard(
                  habitName: 'Kahvaltı Yapma',
                  habitIcon: Icons.breakfast_dining,
                ),
                HabitCard(
                  habitName: 'Telefon Bağımlılığı',
                  habitIcon: Icons.phone_iphone,
                ),
                HabitCard(
                  habitName: 'Sigara Bırakma',
                  habitIcon: Icons.smoking_rooms,
                ),
                HabitCard(
                  habitName: 'Olumlama Yapma',
                  habitIcon: Icons.thumb_up,
                ),
                HabitCard(
                  habitName: 'Erken Uyanma',
                  habitIcon: Icons.access_time,
                ),
                HabitCard(
                  habitName: 'Ders Çalışma',
                  habitIcon: Icons.book,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              child: Text('Alışkanlık Ekle'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddHabitPage()),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notes),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.article),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlogPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BadgePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HabitCard extends StatelessWidget {
  final String habitName;
  final IconData habitIcon;

  HabitCard({required this.habitName, required this.habitIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HabitDetailPage(habitName: habitName),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                habitIcon,
                size: 48.0,
              ),
              SizedBox(height: 8.0),
              Text(
                habitName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddHabitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alışkanlık Ekle')),
      body: Center(
        child: Text('Alışkanlık ekleme sayfası'),
      ),
    );
  }
}

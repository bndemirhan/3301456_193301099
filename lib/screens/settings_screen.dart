import 'package:flutter/material.dart';
import '../main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkModeEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _darkTheme = ThemeData.dark().copyWith(
      // Update color properties for dark mode
      scaffoldBackgroundColor: Colors.black,
      // ... add other color properties for dark mode
    );

    final ThemeData _lightTheme = ThemeData.light().copyWith(
      // Update color properties for light mode
      scaffoldBackgroundColor: Colors.white,
      // ... add other color properties for light mode
    );

    return MaterialApp(
      // Use selected color scheme based on current mode
      theme: _isDarkModeEnabled ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ayarlar'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Kullanıcı adı düzenleme alanı
              TextField(
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adı',
                ),
              ),
              SizedBox(
                  height: 16), // Widget'lar arasına boşluk ekleyebilirsiniz
              // Gece/gündüz modu aktif butonu
              SwitchListTile(
                title: Text('Gece/Gündüz Modu'),
                value: _isDarkModeEnabled,
                onChanged: (bool newValue) {
                  _toggleDarkMode(newValue);
                },
              ),
              SizedBox(
                  height: 16), // Widget'lar arasına boşluk ekleyebilirsiniz
              // Renk düzenleme butonları
              ElevatedButton(
                onPressed: () {
                  // Renk düzenleme butonuna tıklandığında çalışacak fonksiyon
                  // Sayfa rengini değiştirebilirsiniz
                },
                child: Text('Renk Düzenle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*import 'package:flutter/material.dart';
import '../main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkModeEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _darkTheme = ThemeData.dark().copyWith(
      // Update color properties for dark mode
      scaffoldBackgroundColor: Colors.black,
      // ... add other color properties for dark mode
    );

    final ThemeData _lightTheme = ThemeData.light().copyWith(
      // Update color properties for light mode
      scaffoldBackgroundColor: Colors.white,
      // ... add other color properties for light mode
    );

    return MaterialApp(
      // Use selected color scheme based on current mode
      theme: _isDarkModeEnabled ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(title: Text('Ayarlar')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Kullanıcı adı düzenleme alanı
              TextField(
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adı',
                ),
              ),
              SizedBox(
                  height: 16), // Widget'lar arasına boşluk ekleyebilirsiniz
              // Gece/gündüz modu aktif butonu
              SwitchListTile(
                title: Text('Gece/Gündüz Modu'),
                value: _isDarkModeEnabled,
                onChanged: (bool newValue) {
                  _toggleDarkMode(newValue);
                },
              ),
              SizedBox(
                  height: 16), // Widget'lar arasına boşluk ekleyebilirsiniz
              // Renk düzenleme butonları
              ElevatedButton(
                onPressed: () {
                  // Renk düzenleme butonuna tıklandığında çalışacak fonksiyon
                  // Sayfa rengini değiştirebilirsiniz
                },
                child: Text('Renk Düzenle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

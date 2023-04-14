import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Eklenen import
import '../main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Kullanıcı resmi
            CircleAvatar(
              radius: 50, // Dairenin yarıçapı
              backgroundImage: AssetImage(
                  'assets/images/profile.png'), // Resim yolunu belirtin
            ),
            SizedBox(
                height:
                16), // Opsiyonel: Resim ile diğer widget'lar arasına boşluk ekleyebilirsiniz
            // Kullanıcı giriş alanları
            TextField(
              decoration: InputDecoration(
                hintText: 'Kullanıcı Adı',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Şifre',
              ),
              keyboardType: TextInputType.number, // keyboardType eklendi
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter
                    .digitsOnly // inputFormatters eklendi
              ],
              obscureText: true, // Şifre gizleme
            ),
            SizedBox(height: 60), //bu kısımla widget lar arasına boşluk verdim
            ElevatedButton(
              onPressed: () {
                // Giriş butonuna tıklandığında uygulama içine erişim kontrolü
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Giriş'),
            ),
          ],
        ),
      ),
    );
  }
}

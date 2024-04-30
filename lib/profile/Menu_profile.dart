import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuProfile(),
    );
  }
}

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/persona.jpg'),
              ),
            ),
            Text(
              'ELIZABETH PEÑAFIEL',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              '+593 96 947 5973',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),

            ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.edit,
                size: 24.0,
              ),
              label: Text('Profile Settings'),
              
            ),


            ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.privacy_tip,
                size: 24.0,
              ),
              label: Text('Privacidad'),
              
            ),

            ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.logout,
                size: 24.0,
              ),
              label: Text('Cerrar Sesion'),
              
            ),



            
          ],
        ),
      ),
    );
  }
}

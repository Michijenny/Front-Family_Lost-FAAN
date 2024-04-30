import 'package:familylost_faan/profile/Actualizar_profile.dart';
import 'package:familylost_faan/profile/Privacidad_profile.dart';
import 'package:flutter/material.dart';





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
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ActualizarProfile()),
              );
              },
              icon: Icon(
                Icons.edit,
                size: 24.0,
              ),
              label: Text('Profile Settings'),
              
            ),


            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacidaProfile()),
              );
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

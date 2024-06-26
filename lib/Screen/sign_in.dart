
import 'package:familylost_faan/Screen/RequestNP.dart';
import 'package:familylost_faan/pages/cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Utils/colors.dart';
import '../widgets/main_wrapper.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              backgroundColor2,
              backgroundColor2,
              backgroundColor4,
            ],
          ),
        ),
        child: SafeArea(
            child: ListView(
              children: [
                SizedBox(height: size.height * 0.30),

                SizedBox(height: size.height * 0.04),
                // for username and password
                myTextField("Ingresa tu nombre de usuario", Colors.black26, Icons.alternate_email, null),

                myTextField("Ingresa tu contraseña", Colors.black26, Icons.password, Icons.visibility_off_outlined),

                SizedBox(height: size.height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      // for sign in button
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context) => BlocProvider(create:
                            (context) => BottomNavCubit(),
                            child: const MainWrapper(),))
                          );
                        },
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color: general,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Iniciar Sesion",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22
                              ),
                            ),
                          ),
                        ),

                      ),
                      SizedBox(height: size.height * 0.07),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                            MaterialPageRoute(
                              builder: (context) => RequestNP(),
                            ),
                          );
                          },
                        child: Text.rich(
                          TextSpan(
                            text: "¿Has olvidado la contraseña? ",
                            style: TextStyle(
                              color: textColor2,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Text.rich(
                        TextSpan(
                            text: "¿No tienes una cuenta? ",
                            style: TextStyle(
                              color: textColor2,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            children: const [ TextSpan(
                              text: "Registrate",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),)]
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }

  Container myTextField(String hint, Color color, IconData icono1, IconData? icono2) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 22,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            ),

          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              icono1,
              color: color,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icono2,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
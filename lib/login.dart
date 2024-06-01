import 'package:authentication/mybutton.dart';
import 'package:authentication/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                child: Image.asset('images/Login.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome back!',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: 'Email',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(174, 0, 0, 0))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(174, 0, 0, 0))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: signIn,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('or continue with'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    height: 60,
                    child: Image.asset('images/google.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    height: 60,
                    child: Image.asset('images/facebook.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('not a member?'),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(color: Color.fromARGB(255, 7, 59, 101)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

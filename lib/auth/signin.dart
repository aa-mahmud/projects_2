import 'package:flutter/material.dart';
import 'package:flutter_app_2/auth/valid.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

bool obsSecure = true;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TikTok'),
        titleTextStyle: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 130, 57, 57)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 65, right: 65),
            child: Form(
              key: AuthValid.formkey,
              child: Column(
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/02.jpg')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "" || value == null) {
                        return "Data is Wrong";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "User Name or Email",
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(width: 3)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "" || value == null) {
                        return "Data is Wrong";
                      }
                    },
                    obscureText: obsSecure,
                    decoration: InputDecoration(
                      hintText: "Password",
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          obsSecure = !obsSecure;
                          setState(() {});
                        },
                        child: obsSecure == false
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(width: 3)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text('Forget Password'))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        AuthValid.formkey.currentState?.validate();
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an Account?"),
                      TextButton(onPressed: () {}, child: Text("Sign Up")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

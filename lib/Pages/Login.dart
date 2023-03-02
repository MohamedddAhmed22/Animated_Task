import 'package:animated_task/components.dart';
import 'package:flutter/material.dart';



class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: size.height / 3.3,
                  width: double.infinity,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      "login".toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      // border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.2))),
                ),
              ),

              // SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.2))
                      // border: OutlineInputBorder()
                      ),
                ),
              ),
              // SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent[700],
                      borderRadius: BorderRadius.circular(9)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Anmi");

                      if (formkey.currentState!.validate()) {
                        print(TextEditingController());
                      }
                    },
                    icon: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don`t have an account?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign');
                    },
                    child: Text(
                      "  Register ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

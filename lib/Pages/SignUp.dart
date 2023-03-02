import 'package:animated_task/components.dart';
import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                     height: size.height / 4,
                    width: double.infinity,
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        "Register".toUpperCase(),
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
                height: 10,
              ),
              Padding(
                padding:  EdgeInsets.all(13.0),
                child: TextFormField(
                  
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      // border: OutlineInputBorder(),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.4))),
                ),
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
                      prefixIcon: Icon(Icons.email),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.4))
                      
                      ),
                ),
              ),
              
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
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.4))
                      
                      ),
                ),
              ),
              
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
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.4))
                      
                      
                      ),
                ),
              ),
               
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: TextEditingController(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Phone number";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 1.4))
                      
                      
                      ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent[700],
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                        print(TextEditingController());
                      }
                  },
                  icon: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
               Container(
                width: 320,
                height: 40,
                 child: OutlinedButton( 
                            onPressed: () {
                             Navigator.pushNamed(context, '/log');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.purple, fontSize: 19),
                            ),
                            style: OutlinedButton.styleFrom(
                              
                              side: BorderSide(
                                color: Colors.purple,
                              ),
                            ),
                          ),
               ),
              
            ],
          ),
        ),
      ),
    );
  }
}






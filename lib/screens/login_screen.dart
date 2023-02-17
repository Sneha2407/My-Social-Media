import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_social_media/global/styles/round_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailConroller=TextEditingController();
  final passWordController=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;
  bool gloading = false;

  void login() {
    // _auth
    //     .signInWithEmailAndPassword(
    //         email: emailConroller.text.toString(),
    //         password: passWordController.text.toString())
    //     .then((value) {
    //   setState(() {
    //     loading = false;
    //   });
    //   successSnackBar(context, "Log in Successful");
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    // }).onError((error, stackTrace) {
    //   errorSnackBar(context, error.toString());
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailConroller.dispose();
    passWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailConroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              label: Text("Email"),
                              hintText: "abc@gmail.com",
                              prefixIcon: Icon(Icons.alternate_email)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Email";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passWordController,
                          // obscuringCharacter: "*",
                          obscureText: true,
                          decoration: const InputDecoration(
                              label: Text("Password"),
                              hintText: "Password",
                              prefixIcon: Icon(Icons.lock)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButton(
                    text: "Login",
                    loading: loading,
                    onTap: (() {
                      if (_formKey.currentState!.validate()) {
                        login();
                      }
                    }),
                  ),
                  Row(
                    children: [
                      Text("Dont have an account?"),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const SignupScreen()));
                      //   },
                      //   child: Text(
                      //     "Sign up",
                      //     style: TextStyle(color: Colors.amber.shade700),
                      //   ),
                      // )
                    ],
                  ),
                  // GoogleButton(onTap: (() {
                  //   setState(() {
                  //     gloading = true;
                  //   });
                  //   AuthService().signInWithGoogle().then((value) {
                  //     setState(() {
                  //       gloading = false;
                  //     });
                  //     successSnackBar(context, "Google Sign in Succesful");
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const WelcomeScreen()));
                  //   });
                  // }))
                ]),
          ),
        ),
      
    );
  }
}
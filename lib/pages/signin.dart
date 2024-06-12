import 'package:flutter/material.dart';
import 'package:pasal/api/auth.dart';
import 'package:pasal/pages/home.dart';
import 'forgetpass.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isRememberMe = false;

  //String? message;
  Auth _auth = Auth();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios_new_outlined,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 40,
          ),
          Text("Welcome back",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 9,
          ),
          Text(
              "Sign In with your email and password \n       or continue with social media",
              style: TextStyle(fontSize: 14)),
          SizedBox(
            height: 24,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
                  hintText: "Enter the email",
                  labelText: "Email",
                  contentPadding: EdgeInsets.only(left: 24, right: 24),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: "Password",
                    labelText: "Password",
                    contentPadding: EdgeInsets.only(left: 24, right: 24),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ],
          )),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Checkbox(value: isRememberMe, onChanged: ((value) {
                setState(() {
                  isRememberMe=value!;
                });
              })),
              Text("Remember me"),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => ForgetPasswordPage())));
                },
                child: Text(
                  "Forget Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () async {
                //await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
                // var user = await _auth.signInWithEmailAndPassword(
                //     email: _emailController.text,
                //     password: _passwordController.text);
                // if (user != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => Home())));
                  //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Home())));
                // } else {
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //       elevation: 0,
                //       backgroundColor: Colors.transparent,
                //       behavior: SnackBarBehavior.floating,
                //       content: Container(
                //         height: 75,
                //         //width: 29,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(14),
                //             color: Colors.red),
                //         child: Center(
                //             child: Text(
                //           "OOps error occured during login\n   ${_auth.errorMessage}",
                //           style: TextStyle(color: Colors.white),
                //         )),
                //       )));
                // }
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(19)),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Spacer(),
          // SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(14),
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.all(14),
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.all(14),
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have a account ?"),
              TextButton(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {},
              )
            ],
          )
        ]),
      ),
    );
  }
}

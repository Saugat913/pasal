import'package:flutter/material.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),onPressed: (){
          Navigator.of(context).pop();
        },),
        title: Text("Forget Password",style: TextStyle(color:Colors.black54),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text("Forget Password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
            SizedBox(height: 14,),
            Text("       Please provide the email below\nWe will send email to reset passwrord"),
           Spacer(flex: 1,),
            TextField(
               decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: "Enter the email",
                    labelText: "Email",
                    contentPadding: EdgeInsets.only(left: 24, right: 24),
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
            ),
            Spacer(flex: 1,),
             TextButton(
              onPressed: () {
               // Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Home())));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(19)),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
Spacer(flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have a account ?"),
                TextButton(child: Text("Sign up",style: TextStyle(color:Colors.red),),onPressed: (){},)

              ],),
              SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}
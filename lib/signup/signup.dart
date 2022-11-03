import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../login/loginscreen.dart';



class SignupPage extends StatefulWidget {
  static const String tag = '-/signuppage';

  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _mobilenumber = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _bio = TextEditingController();

  Future RegistrationUser() async{

    var APIURL = "https://indialearner.in/api/create_account.php";

    Map mapeddata = {
      'first_name': _firstname.text,
      'last_name': _lastname.text,
      'mobile_number': _mobilenumber.text,
      'email': _email.text,
      'password': _password.text,
      'bio': _bio.text,
    };
    print("JSON DATA: ${mapeddata}");

    http.Response response = await http.post(Uri.parse(APIURL), body: mapeddata);

    var data = jsonDecode(response.body);

    print("DATA: ${data}");

  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/wavybg.jpg'),
          //     fit: BoxFit.fill,
          //     opacity: 0.2,
          //   ),),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Signup', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Enter your personal details to continue', style: TextStyle(fontSize: 20, ),),
                const SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _firstname,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'First Name',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (var value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter Name";
                      }
                      return null;
                    },
                    onSaved: (var name) {

                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _lastname,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Last Name',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (var value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter Name";
                      }
                      return null;
                    },
                    onSaved: (var name) {

                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _mobilenumber,
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Mobile number',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (var value) {
                      if(value!.isEmpty)
                      {
                        return "Please enter mobile number";
                      }
                      if(value!.length < 9)
                      {
                        return "Please enter valid mobile number";
                      }else {
                        return null;
                      }
                    },
                    onSaved: (var number){

                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _password,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Password',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (var value){
                      if(value!.isEmpty)
                      {
                        return "Please enter password";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _email,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Email',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (var value){
                      if(value!.isEmpty)
                      {
                        return "Please enter email";
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
                      {
                        return "Please enter valid email";
                      }
                      return  null;
                    },
                    onSaved: (var email) {

                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    controller: _bio,
                    autofocus: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Bio (Optional)',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate())
                        {
                          RegistrationUser();
                          Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                          print("Successful");
                        }else
                        {
                          print("Unsuccessful");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black38,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      child: const Text('Signup',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

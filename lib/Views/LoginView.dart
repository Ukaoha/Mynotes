
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();

  
}

class _LoginViewState extends State<LoginView> {
    late final TextEditingController _email ;
    late final TextEditingController _password ;

    @override 
    void initState() { 
      super.initState();
      _email = TextEditingController();
      _password = TextEditingController();
      
    }

    @override 
    void dispose() { 
      _email.dispose();
      _password.dispose();
      super.dispose();
      
    }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Login'),
      ),
      body: Column(
                children: [
                  TextField(
                    controller:  _email,
                     enableSuggestions: false,
            
                   autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                     ),
                  ),
                  TextField(
                    controller: _password,
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      
                      hintText: 'Enter Password',
                     ),
            
                  ),
                  
                     TextButton(
                      onPressed: () async {
            
                        final email = _email.text ;
                        final password = _password.text ;
    
                        try{
                                            final UserCredential =
                      await  FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: email, 
                        password: password);
    //                                                 Fluttertoast.showToast(
    //   msg: 'Successfully logged in!',
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.TOP_RIGHT,
    // );


                        print(UserCredential);
                      }on FirebaseAuthException catch(e) {
                        print(e.code);
    //                                                 Fluttertoast.showToast(
    //   msg: 'Error: ${e.code}',
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.TOP_RIGHT,
    // );

                      }
    
                        }
                       
                  , child: const Text('Login'),
                  ),
    
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/registar',
                     (route) => false);
                  },
                   child: const Text('Not Registered yet? Register here'),
                   )
             
                  
                ],
              ),
    );
    
  }
}
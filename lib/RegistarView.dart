import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mynotes/firebase_options.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
        appBar: AppBar(
          title: const Text('Registar'),
          
          ),
          body: FutureBuilder(
            future: Firebase.initializeApp(
                      options: DefaultFirebaseOptions.currentPlatform,
                     ) ,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                  case ConnectionState.done :
              return Column(
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
                     try {
                     final UserCredential =
                    await  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email, 
                      password: password);
                      print(UserCredential);
                    } on FirebaseAuthException catch(e){
                      print(e.code);
                    }

                     }   
                , child: const Text('Registar'),),
           
                
              ],
            );
          // )
                          default:
                          return const Text('loading....');
              }

            },
          
      ),
      );
    
  }
}

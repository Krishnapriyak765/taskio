import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordScreen extends StatefulWidget {
 @override
 _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
 final _formKey = GlobalKey<FormState>();
 final _emailController = TextEditingController();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Forgot Password'),
     ),
     body: Container(
       decoration: const BoxDecoration(
           gradient: LinearGradient(
             colors: [Color(0xff218086),
               Color(0xff27528E)],
             begin: Alignment.bottomLeft,
             end: Alignment.topRight,
           )
       ),
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Form(
           key: _formKey,
           child: Column(
             children: [
               TextFormField(
                 controller: _emailController,
                 decoration: InputDecoration(
                   labelText: 'Email Address',
                   border: OutlineInputBorder(

                   ),
                 ),
                 validator: (value) {
                   if (value!.isEmpty) {
                     return 'Please enter your email address';
                   }
                   return null;
                 },
               ),
               SizedBox(height: 20),
               ElevatedButton(
                  onPressed: () {},
                 // async {
                 //   if (_formKey.currentState!.validate()) {
                 //     await _sendPasswordResetLink();
                 //   }
                 // },
                 child: Text('Send Password Reset Link'),
               ),
             ],
           ),
         ),
       ),
     ),
   );
 }
 // Future<void> _sendPasswordResetLink() async {
 //   try {
 //     await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text);
 //     ScaffoldMessenger.of(context).showSnackBar(
 //       SnackBar(content: Text('Password reset link sent to your email address')),
 //     );
 //   } catch (e) {
 //     ScaffoldMessenger.of(context).showSnackBar(
 //       SnackBar(content: Text('Error sending password reset link: $e')),
 //     );
 //   }
 // }
}


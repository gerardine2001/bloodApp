import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

final _formKey = GlobalKey<FormState>();

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Define the validateEmail function within the SignUpPage widget
  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    // Use a regular expression to validate the email format
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null; // Return null if the email is valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Color.fromARGB(255, 224, 96, 96)),
        ),
      ),
      body: Center(

        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController, // Assign name controller
                decoration: const InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (name) => name!.length < 5 ? 'Name should be at least 5 characters' : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),


              const SizedBox(height: 15),
              TextFormField(
                controller: _emailController, // Assign email controller
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: validateEmail, // Using the validateEmail function
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),


              const SizedBox(height: 15),
              TextFormField(
                controller: _passwordController, // Assign password controller
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: ValidationBuilder().minLength(6).maxLength(20).required().build(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),

              
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/survey');
                },
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState?.validate();
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.redAccent),
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

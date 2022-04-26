import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:happychinese/frontend/login_screen_new.dart';

class RegisrtationScreen extends StatefulWidget {
  const RegisrtationScreen({Key? key}) : super(key: key);

  @override
  State<RegisrtationScreen> createState() => _RegisrtationScreenState();
}

class _RegisrtationScreenState extends State<RegisrtationScreen> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  final confirmPasswordEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Registration'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const LoginScreenNew()));
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              TextFormField(
                validator: (value) => EmailValidator.validate(value!)
                    ? null
                    : "Please enter a valid email",
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                 passwordEditingController.text = value!;
                },
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Enter new password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: confirmPasswordEditingController,
                validator: (value) {
                  if (value == null || confirmPasswordEditingController.text !=
              passwordEditingController.text) {
                    return 'Please repeat your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  confirmPasswordEditingController.text = value!;
                },
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Repeat new password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: const Text("I accepted confidenciality politics."),
                contentPadding: EdgeInsets.zero,
                value: rememberValue,
                activeColor: Theme.of(context).colorScheme.primary,
                onChanged: (newValue) {
                  setState(() {
                    rememberValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {print('reg is succes');}
                  else {print('reg is NOT succes');}
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //  ),
    );
  }
}

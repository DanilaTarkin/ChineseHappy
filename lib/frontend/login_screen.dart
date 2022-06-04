import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'registration_screen.dart';
import 'main_screen.dart';

class LoginScreenNew extends StatefulWidget {
  const LoginScreenNew({Key? key}) : super(key: key);

  @override
  State<LoginScreenNew> createState() => _LoginScreenNewState();
}

class _LoginScreenNewState extends State<LoginScreenNew> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login_screen_name),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
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
                    : AppLocalizations.of(context)!.validator_email,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.input_email,//'Enter your email',
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.validator_password;
                  }
                  return null;
                },
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: AppLocalizations.of(context)!.input_password, //'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              CheckboxListTile(
                title: Text(AppLocalizations.of(context)!.remember_me),
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('{message_login_accepted}');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MainScreen()));
                  } else {
                    print('{message_login_warning}');
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: Text(
                  AppLocalizations.of(context)!.sign_in,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('{message_login_no}');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'NO AUTHORIZATED NEXT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppLocalizations.of(context)!.not_register),
                  TextButton(
                    onPressed: () {
                      print('{message_registration_screen}');
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisrtationScreen(),
                        ),
                      );
                    },
                    child: Text(AppLocalizations.of(context)!.create_acc),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:happychinese/frontend/login_screen.dart';

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
        title: Text(AppLocalizations.of(context)!.registration_screen_title),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            print('{message_login_screen}');
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
                    : AppLocalizations.of(context)!.validator_email,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.input_email,
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
                    return AppLocalizations.of(context)!.validator_password;
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
                  hintText: AppLocalizations.of(context)!.input_new_password,
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
                  if (value == null ||
                      confirmPasswordEditingController.text !=
                          passwordEditingController.text) {
                    return AppLocalizations.of(context)!.validator_confirm_password;
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
                  hintText: AppLocalizations.of(context)!.input_confirm_password,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: Text(AppLocalizations.of(context)!.confidenciality_politics),
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
                  if (_formKey.currentState!.validate()) {
                    print('{message_registration_accepted}');
                  } else {
                    print('{message_registration_NOT_accepted}');
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: Text(
                  AppLocalizations.of(context)!.sign_up,
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

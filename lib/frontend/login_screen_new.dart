import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:happychinese/frontend/frontend_old/splash_screen.dart';
import 'package:happychinese/frontend/registration_screen.dart';
import 'package:happychinese/frontend/splash_screen_new.dart';

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
        title: const Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const SplashScreenNew()));
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) => EmailValidator.validate(value!)
                        ? null
                        : "Please enter a valid email",
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon  : const Icon(Icons.email),
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
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text("Remember me"),
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
                      if (_formKey.currentState!.validate()) {}
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Sign in',
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
                      const Text('Not registered yet?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegisrtationScreen(),
                            ),
                          );
                        },
                        child: const Text('Create an account'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:happychinese/core/constants.dart';
// import 'package:happychinese/frontend/frontend_old/common/email_password.dart';
// import 'package:happychinese/frontend/splash_screen_new.dart';

// class LoginScreenNew extends StatefulWidget {
//   const LoginScreenNew({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<LoginScreenNew> createState() => _LoginScreenNewState();
// }

// class _LoginScreenNewState extends State<LoginScreenNew> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//         title: const Text('Sign In'),
//         centerTitle: true,
//         backgroundColor: Colors.black38,
//         foregroundColor: Colors.white70,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                     builder: (BuildContext context) => const SplashScreenNew()));
//           },
//         ),
//       ),
//       body: Column(
//         children:[
//           Expanded(
//             flex: 1,
//             child:Center(
//               child: Container(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: const EmailPassword(),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Color.fromARGB(255, 0, 0, 0),
//               child: const EmailPassword(),
//               ),
//               ),
//         ],
//       ),
//     );
//   }
// }
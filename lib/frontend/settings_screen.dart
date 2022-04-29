import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:happychinese/frontend/account_screen.dart';
import 'package:happychinese/frontend/login_screen.dart';
import 'package:happychinese/l10n/all_locales.dart';
import 'package:happychinese/locale_provider.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String _dropdownValue = "Русский";

  @override
  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
        //полюбому можно сделать подругому 
        //скорее всего получу пизды от тебя ыыы
        
        if (selectedValue == "Русский") {
          Provider.of<LocaleProvider>(context, listen: false)
              .setLocale(AllLocales.all[1]);
        } else 
        {
          Provider.of<LocaleProvider>(context, listen: false)
              .setLocale(AllLocales.all[0]);
        }
        print('change lang');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.options_screen_name,
        ),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mode_night_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //интересная реализация карточки профиля
                //посмотри как работает мб ее использовать в профиле
                //тут все сделано через кард и листайл
                // Card(
                //   elevation: 8.0,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10.0)),
                //   color: Colors.purple,
                //   child: ListTile(
                //     onTap: () {
                //       //open edit profile
                //     },
                //     title: Text(
                //       "John Doe",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //     leading: CircleAvatar(
                //       backgroundColor: Colors.green,
                //     ),
                //     trailing: Icon(
                //       Icons.edit,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                //const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.mode_night_outlined,
                          color: Colors.purple,
                        ),
                        title: Text(AppLocalizations.of(context)!.change_theme_app,
                          ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.language,
                          color: Colors.purple,
                        ),
                        title: Text(AppLocalizations.of(context)!.change_language_app),
                        trailing: DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                  child: Text("Русский"), value: "Русский"),
                              DropdownMenuItem(
                                  child: Text("English"), value: "English"),
                            ],
                            elevation: 8,
                            value: _dropdownValue,
                            onChanged: dropdownCallback),
                        // Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change language
                        },
                      ),
                      _buildDivider(),
                      TextButton(
                        onPressed: () {
                          print('{message_registration_screen}');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreenNew(),
                            ),
                          );
                        },
                        child: Text(
                          AppLocalizations.of(context)!.logout,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            backgroundColor: Colors.white30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}

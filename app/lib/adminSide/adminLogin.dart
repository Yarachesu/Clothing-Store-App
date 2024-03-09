import 'package:app/adminSide/adminScreen/adminHome.dart';
import 'package:app/prefs/loginPreference.dart';
import 'package:app/utils/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class adminLogin extends StatefulWidget {
  const adminLogin({super.key});

  @override
  State<adminLogin> createState() => _adminLoginState();
}

class _adminLoginState extends State<adminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 30,
              ),
              child: Text(
                'Let\'s Sign You In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Welcome back,',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            textFields(
              hint: 'Adminname or email',
              prefix: Icon(
                Icons.person_2_outlined,
              ),
            ),
            textFields(
              hint: 'Password',
              prefix: Icon(
                Icons.shopping_bag_rounded,
              ),
            ),
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<defaultt>(
                  builder: (context, value, child) {
                    return MaterialButton(
                      height: 60,
                      minWidth: 400,
                      color: Color.fromARGB(255, 128, 140, 220),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {
                        setState(() {
                          value.islogin = true;
                        });

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => adminHome(),
                          ),
                        );
                      },
                      child: Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Signin',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.login_outlined,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
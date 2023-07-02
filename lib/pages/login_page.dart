import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              //key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 207, 201),
                      shape: BoxShape.circle,
                    ),
                    //child: Image.asset("lib/images/masti.png",),

                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "MASTH",
                    style: TextStyle(
                      fontFamily: 'Century Gothic',
                      fontSize: 40,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Century Gothic',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                  child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    child: Column(
                      children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              showCursor: true,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                              ],
                              style: TextStyle(
                              color: Theme.of(context).primaryColor,

                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                              labelText: "Mobile Number",
                              labelStyle: TextStyle(
                                  fontFamily: 'Century Gothic',
                                  color: Theme.of(context).primaryColor),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefix: Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 8),
                                      child: Text(
                                        '(+91)',
                                          style: TextStyle(
                                              fontFamily: 'Century Gothic',
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                              ),
                            ),
                            onChanged: (value) {
                              //phone = value;
                            },
                          ),
                        ),
                              SizedBox(
                                  width: 10,
                              ),
                              SizedBox(
                                width: 90,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                       print('verifying phone number...');
                                      // print(phone);
                                      // await FirebaseAuth.instance.verifyPhoneNumber(
                                      //   phoneNumber: '+91' + phone,
                                      //   timeout: const Duration(seconds: 10),
                                      //   verificationFailed:
                                      //       (FirebaseAuthException e) {
                                      //     if (e.code == 'invalid-phone-number') {
                                      //       print(
                                      //           'The provided phone number is not valid.');
                                      //     }
                                      //     print(
                                      //         'exception occurred: ' + e.toString());
                                      //     // Handle other errors
                                      //   },
                                      //   verificationCompleted: (PhoneAuthCredential
                                      //       phoneAuthCredential) async {
                                      //     print(
                                      //         'The provided phone number is valid.');
                                      //     // print(test);
                                      //   },
                                      //   codeSent: (String verificationId,
                                      //       int? forceResendingToken) {
                                      //     print('verificationId: ' + verificationId);
                                      //     print('forceResendingToken: ' +
                                      //         forceResendingToken.toString());
                                      //     _verificationId = verificationId;
                                      //     Navigator.of(context).pushReplacement(
                                      //       MaterialPageRoute(
                                      //           builder: (context) => Otp(
                                      //                 verificationId: _verificationId,
                                      //               )),
                                      //     );
                                      //   },
                                      //   codeAutoRetrievalTimeout:
                                      //       (String verificationId) {
                                      //     print('codeAutoRetrievalTimeout: ' +
                                      //         verificationId);
                                      //     _verificationId = verificationId;
                                      //   },
                                      // );
                                            },
                                              style: ButtonStyle(
                                                foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                  Colors.brown,
                                                ),
                                                backgroundColor:
                                                MaterialStateProperty.all<Color>(Colors.brown
                                                ),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Center(
                                                  child: Text(
                                                    "Send OTP",
                                                    style: TextStyle(
                                                      fontFamily: 'Century Gothic',
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                  // Other widgets
                                  // ...
                                ],
                              ),
                             ],
                            ),
                          ),
                    ),
                  SizedBox(height: 10,),
                  Text("OR",
                      style: TextStyle(
                        fontFamily: 'Century Gothic',
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                      )),
                  SizedBox(height: 30,),
                  SizedBox(
                    //width: 300,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(
                            Colors.brown,
                          ),
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.brown),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Text(
                              "Sign in With Google",
                              style: TextStyle(
                                fontFamily: 'Century Gothic',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox( height: 30,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text('Not a member?  ',
                  //     style: TextStyle(
                  //       fontSize: 18,
                  //     ),),
                  //     Text(
                  //         'Register now',
                  //     style: TextStyle(
                  //       color: Colors.blue,fontWeight: FontWeight.bold,
                  //       fontSize: 18,
                  //     ),),
                  //   ],
                  // )// ...
                  ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }

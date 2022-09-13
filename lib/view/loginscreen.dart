import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:task1/services/services.dart';
import 'package:task1/view/homescreen/homescreen.dart';
import 'package:task1/widgets/customtextfeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: FutureBuilder(
                future: getPostApi2(),
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Padding(
                      padding: EdgeInsets.fromLTRB(50, 300, 50, 50),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/WhatsApp Image 2022-09-11 at 4.43.29 PM.jpeg'))),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: CustomFeild(
                              Controller: emailcontroller,
                              label: "Email",
                              obscurity: false,
                            )),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: CustomFeild(
                              Controller: passwordcontroller,
                              obscurity: true,
                              label: "Password",
                              suffix: const Icon(Icons.remove_red_eye),
                            )),
                        GestureDetector(
                          onTap: () => {
                            if (emailcontroller.text ==
                                    postList2[0].email.toString() &&
                                passwordcontroller.text ==
                                    postList2[0].username.toString())
                              {
                                Get.to(HomeScreen(), arguments: [
                                  postList2[0].name.toString(),
                                  postList2[0].username.toString(),
                                  postList2[0].email.toString(),
                                  postList2[0].phone.toString(),
                                ]),
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => HomeScreen()),
                                // ),
                              }
                            else
                              {}
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    fontFamily: 'Confortaa',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffE43228),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }))),
      ),
    );
  }
}

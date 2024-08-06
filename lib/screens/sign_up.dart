import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmcontroller = TextEditingController();

  bool islock = true;
  bool issecured = true;

  void submit() {
    final isvalid = formkey.currentState!.validate();
    if (!isvalid) {
      return;
    }
    formkey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Sign up new account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'lib/screens/assets/signup.png',
                          scale: 1,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Name field required';
                                }
                                return null;
                              },
                              controller: namecontroller,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                ),
                                hintText: 'Team name',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email field required';
                                }
                                return null;
                              },
                              controller: emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                                hintText: 'Team email',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Phone number field required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.phone,
                              controller: phonecontroller,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.call,
                                  color: Colors.grey,
                                ),
                                hintText: 'Phone number',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: passwordcontroller,
                              decoration: InputDecoration(
                                suffixIcon: securedpassword(),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                hintText: 'Password',
                              ),
                              obscureText: issecured,
                              onFieldSubmitted: (value) {},
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password field cannt be empty';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Confirm password field cannt be empty';
                                }
                                return null;
                              },
                              obscureText: islock,
                              controller: confirmcontroller,
                              decoration: InputDecoration(
                                suffixIcon: tooglepassword(),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                hintText: 'Confirm password',
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Button(
                              width: 220,
                              height: 50,
                              text: 'Sign Up',
                              onTap: () {
                                // logic
                                submit();
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Already have an account?'),
                                TextButton(
                                    onPressed: () {
                                      // naviagte to login screen
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Login()));
                                    },
                                    child: const Text(
                                      'Sign in',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 77, 7, 207),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Widget tooglepassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            islock = !islock;
          });
        },
        icon: islock
            ? const Icon(
                Icons.visibility,
                color: Colors.grey,
              )
            : const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              ));
  }

  Widget securedpassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            issecured = !issecured;
          });
        },
        icon: issecured
            ? const Icon(
                Icons.visibility,
                color: Colors.grey,
              )
            : const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              ));
  }
}

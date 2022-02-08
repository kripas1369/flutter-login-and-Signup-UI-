import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple[900],
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('assets/logo.png')),
                    ),
                    Container(
                      child: const Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Column(children: [
                              Container(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 70),
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.grey[200],
                                  ),
                                  child: TextField(
                                    cursorColor: Colors.purple[900],
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.purple[900],
                                      ),
                                      hintText: "hello@reallygreatsite.com",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.grey[200],
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    cursorColor: Colors.purple[900],
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.purple[900],
                                      ),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.purple[900],
                                      ),
                                      hintText: "Password",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 22.0, right: 20, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor:
                                                MaterialStateProperty.resolveWith(
                                                    getColor),
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),
                                          const Text(
                                            'Remember me',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Respond to button press
                                        },
                                        child: Text(
                                          "Forget password",
                                          style: TextStyle(
                                              color: Colors.purple[900]),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20),
                                child: Expanded(
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    elevation: 8.0,
                                    minWidth: 400.0,
                                    height: 54,
                                    color: Colors.purple[900],
                                    onPressed: () {
                                      print('login');
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print('pressed');
                                      },
                                      child: Text(
                                        ' Create an account',
                                        style: TextStyle(
                                            color: Colors.purple[900],
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

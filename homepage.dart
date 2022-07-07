import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'secondpage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          backgroundColor: Colors.green,
          title: Text(
            "Login form",
            style: GoogleFonts.pacifico(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:const  EdgeInsets.all(16.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'This is login page',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 500),
                      ),
                    ],
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    // child: Text(
                    //   "Login Form",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 20.0,
                    //       fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    onChanged: (String) {
                      print(emailController.text);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Email address',
                      labelText: "enter email ",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:const  EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    controller: passController,
                    onChanged: (String) {
                      print(passController.text);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Password',
                      labelText: "enter password",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "forgot password ?",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                  const  SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (() {}),
                      child: const Text("Login"),
                    ),
                    const SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        if (emailController.text == "test" &&
                            passController.text == "test") {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("signup successfully"),
                          ));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const SecondPage()),
                          );
                        }
                      },
                      child: const Text("Sign up"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding:   const EdgeInsets.all(8.0),
                      child: Padding(
                        padding:  const  EdgeInsets.all(8.0),
                        child: Text(
                          "This is flutter bootcamp ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 800,
                    width: 500,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// class ScaffoldMessanger {
//   static of(BuildContext context) {}
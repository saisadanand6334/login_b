import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/bmi3.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 101, backgroundImage: AssetImage('images/bmi2.jpg')),
                TextField(
                  decoration: InputDecoration(
                    label: Text(
                      "Email",
                    ),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Passowrd"),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Log In"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Not a member? Sign up now",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

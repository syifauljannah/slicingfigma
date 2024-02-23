import 'package:flutter/material.dart';
import 'package:slicingfigma/landingpage.dart';

void main() {
  runApp(const SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(250, 227, 146, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Text(
                'SignUp Now',
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontSize: 42,
                  color: Color.fromRGBO(26, 93, 26, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'IbarraRealNova',
                    fontSize: 14,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(26, 93, 26, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'IbarraRealNova',
                    fontSize: 14,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(26, 93, 26, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: hidepass,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'IbarraRealNova',
                    fontSize: 14,
                  ),
                  suffixIcon: IconButton(
                    icon: hidepass
                        ? const Icon(Icons.visibility_off_sharp)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        hidepass = !hidepass;
                      });
                    },
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(26, 93, 26, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Or Login With',
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(68, 10, 68, 10),
                      backgroundColor: const Color.fromRGBO(253, 244, 214, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/facebook.png',
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Login With Facebook',
                          style: TextStyle(
                            fontFamily: 'IbarraRealNova',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(125, 119, 99, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(76, 10, 76, 10),
                      backgroundColor: const Color.fromRGBO(253, 244, 214, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/google.png',
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Login With Google',
                          style: TextStyle(
                            fontFamily: 'IbarraRealNova',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(125, 119, 99, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
                  backgroundColor: const Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()),
                  );
                },
                child: const FittedBox(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromRGBO(250, 227, 146, 1),
                      fontFamily: 'IbarraRealNova',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

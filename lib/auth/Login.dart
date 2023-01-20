import 'package:flutter/material.dart';
import 'package:spotify_flutter/auth/components/CustomTextField.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool rememberMe = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 1,
            color: Colors.black,
          ),
          Container(
            height: size.height * 0.65,
            width: size.width * 1,
            decoration: BoxDecoration(
              color: Colors.greenAccent[700],
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(500, 180),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 40,
            child: Container(
              height: size.height * 0.55,
              width: size.width * 0.8,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 24.0,
                        bottom: 24.0,
                      ),
                      child: Text(
                        'Login Account',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        right: 12.0,
                        top: 12.0,
                        bottom: 8.0,
                      ),
                      child: CustomTextField(
                        size: size,
                        // obscure: ,
                        hint: 'Email or username',
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                          ),
                          focusColor: Colors.greenAccent[700],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        right: 12.0,
                        top: 12.0,
                        bottom: 8.0,
                      ),
                      child: CustomTextField(
                        size: size,
                        obscure: true,
                        hint: 'Password',
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility_off,
                            // color: Colors.greenAccent[700],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Remember me'),
                          Switch(
                              value: rememberMe,
                              activeColor: Colors.greenAccent[700],
                              onChanged: (bool value) {
                                setState(() {
                                  rememberMe = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.greenAccent[700],
                        primary: Colors.greenAccent[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 56.0,
                          vertical: 12.0,
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width * 0.23,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: size.width * 0.23,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: size.height * 0.04,
                          width: size.width * 0.08,
                          child: Image.asset(
                              'assets/image/f_logo_RGB-Blue_512.png'),
                        ),
                        Container(
                          height: size.height * 0.04,
                          width: size.width * 0.08,
                          child: Image.asset('assets/image/appleLogo.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Text(
                      'Forgot your Password?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 800,
            left: 92,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: " Sign Up now",
                    style: TextStyle(
                      color: Colors.greenAccent[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 78,
            left: 45,
            child: Container(
                height: size.height * 0.1,
                width: size.width * 0.8,
                child: Image.asset('assets/image/Spotify_Logo_RGB_White.png')),
          ),
          Positioned(
            top: 190,
            left: 99,
            child: Text(
              'Millions of songs, free on spotify',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

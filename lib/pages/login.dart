import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Text(
                    "Lagos Palliative Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF009ED6),
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 50.0,
                  ),
                  child: Image.asset(
                    "assets/lagosLogo.jpeg",
                    fit: BoxFit.contain,
                    width: 200.0,
                    height: 170.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 58.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.032,
                    color: Color(0xFFF4A94E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.032,
                    color: Color(0xFFE43B36),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3648,
                    color: Color(0xFF009ED6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 34.0,
                            right: 44.0,
                            left: 44.0,
                          ),
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2.0),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 14.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 14.0,
                              ),
                              child: Center(
                                child: Text(
                                  "Sign In with Google",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 18.0,
                            right: 18.0,
                            left: 18.0,
                          ),
                          child: Material(
                            color: Color(0xFF00688C),
                            borderRadius: BorderRadius.circular(150.0),
                            child: InkWell(
                              onTap: () {
                              Navigator.pushNamed(context, '/inputLasra');
                            },
                            splashColor: Color(0xFF009ED6),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 14.0,
                                  left: 66.0,
                                  right: 66.2,
                                  bottom: 14.0,
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In with email",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';



class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Material(
                          color: Color(0xFF00688C),
                          elevation: 7.0,
                          borderRadius: BorderRadius.all(Radius.circular(25.0,),),
                          child: Center(
                            child: Icon(Icons.arrow_back, color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 84.0, top: 29.0,),
                    child: Image(image: AssetImage("assets/lagosLogo.jpeg"), height: 124.0, width: 124.0,),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 41.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Welcome!", style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.normal, color: Color(0xFF009ED6),),)),
              ),
              Padding(padding: EdgeInsets.only(top: 10.92,),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.account_circle, color: Color(0xFFDADADA), size: 100.0,)
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 14.92,),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Kevin Ohiro", style: TextStyle(fontSize: 33.0, fontWeight: FontWeight.bold,),)
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(padding: EdgeInsets.only(bottom:28.0, left: 19.0, right:18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.096,
                    color: Colors.transparent,
                    child: Material(
                      color: Color(0xFF009ED6),
                      borderRadius: BorderRadius.all(Radius.circular(150.0),),
                      child: Center(
                        child: Text("Continue", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Colors.white),)
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
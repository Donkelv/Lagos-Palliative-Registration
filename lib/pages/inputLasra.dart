import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputLasra extends StatefulWidget {
  @override
  _InputLasraState createState() => _InputLasraState();
}

class _InputLasraState extends State<InputLasra> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController lasraNumber;
  String localGovt;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 7.0,
                          color: Color(0xFF00688C),
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.transparent,
                            child: Center(
                                child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 29.0, left: 50.0,),
                      child: Image(image: AssetImage("assets/lagosLogo.jpeg",), height: 124.0, width: 124.0),
                    ),
                  ], 
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 66.0,
                    left: 50.0,
                    right: 50.0,
                  ),
                  child: Text(
                    "Input LASRA number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    
                    left: 10.0,
                    right: 10.0,
                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 16.0,),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children:<Widget>[
                              Material(
                                color: Colors.white,
                                child: ListTile(
                                  title: TextFormField(
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                      
                                      hintText: "Input here",
                                      hintStyle: TextStyle(
                                        color: Color(0xFFA2A2A2),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17.0,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        gapPadding: 5.0,
                                        borderRadius: BorderRadius.all(Radius.circular(150.0),),
                                        borderSide: BorderSide(color: Color(0xFFA2A2A2),),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(150.0),),
                                        borderSide: BorderSide(color: Color(0xFF00688C),),
                                      ),
                                    ),
                                    controller: lasraNumber,
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
                Padding(padding: EdgeInsets.only(top: 16.0,left: 24.0, right: 24.0),
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.096,
                    child: Material(
                      color: Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(150.0),
                      child: DropdownButton<String>(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only( left: 125.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.keyboard_arrow_down, color: Colors.black,)),
                        ),
                        items: <String>['	Alimosho','Mushin','Ojo','Ikorodu','Surulere'].map((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 37.0,),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(value, style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500,),)),
                            ),
                          );
                        }).toList(),
                        value: localGovt,
                        hint: Text("Select L.G.A", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500, color: Color(0xFFA2A2A2),),),
                        onChanged: (value){
                          setState(() {
                            localGovt = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 22.0, left: 24.0, right: 24.0),
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.096,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(150.0),),
                      color: Color(0xFF009ED6),
                      child: Center(
                        child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,),)
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

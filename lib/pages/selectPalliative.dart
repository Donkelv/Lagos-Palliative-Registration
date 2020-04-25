import 'package:flutter/material.dart';


class SelectPalliative extends StatefulWidget {
  @override
  _SelectPalliativeState createState() => _SelectPalliativeState();
}

class _SelectPalliativeState extends State<SelectPalliative> {
  bool nosemask = false;
  bool foodStuff = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Material(
                        elevation: 7.0,
                        color: Color(0xFF00688C),
                        borderRadius: BorderRadius.circular(25.0),
                        child: InkWell(
                          onTap: (){
                          Navigator.pop(context);
                           },
                           splashColor: Color(0xFF009ED6),
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
                Padding(padding: EdgeInsets.only(top: 30.0,left: 30.0, right: 30.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Available Palliatives", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF009ED6), fontSize: 25.0, fontWeight: FontWeight.bold,),),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 0.5, left: 30.0, right: 30.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("For you, Kevin Ohiro", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 27.0, fontWeight: FontWeight.w400,),),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40.0,),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Select from the list below", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF00688C), fontSize: 19.0, fontWeight: FontWeight.w400,),),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 17.0,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:<Widget>[
                     Padding(padding: EdgeInsets.only(left: 25.0,),
                        child: Checkbox(
                          value: nosemask, 
                          onChanged: (bool value){
                            setState(() {
                              nosemask = value;
                            });

                            print(MediaQuery.of(context).size.width);

                          }),
                     ),
                     Padding(padding: EdgeInsets.only(left: 5.0, right: 18.0),
                        child: Container(
                          height: 88.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.0),
                            color: Color(0xFF00688C),
                          ),
                         
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(top: 12.0, left: 17.0, bottom: 12.0,),
                                 child: Container(
                                   height: 55.0,
                                   width: 55.0,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10.0),
                                   ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(9.0),
                                        child: Image(image: AssetImage("assets/noseMask.jpeg"), height: 52.0, width: 45.0,)),
                                    ), 
                                 ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 15.0),
                                 child: Text("Nose Mask", textAlign: TextAlign.start, style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w700, color: Colors.white),),
                              ),
                            ]
                          ),
                        ),
                     ),
                   ],
                 ),
                ),
                Padding(padding: EdgeInsets.only(top: 17.0,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:<Widget>[
                     Padding(padding: EdgeInsets.only(left: 25.0,),
                        child: Checkbox(
                          value: foodStuff, 
                          onChanged: (bool value){
                            setState(() {
                              foodStuff = value;
                            });

                            print(MediaQuery.of(context).size.width);
                            
                          }),
                     ),
                     Padding(padding: EdgeInsets.only(left: 5.0, right: 18.0),
                        child: Container(
                          height: 88.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.0),
                            color: Color(0xFF00688C),
                          ),
                         
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:<Widget>[
                              Padding(padding: EdgeInsets.only(top: 12.0, left: 17.0, bottom: 12.0,),
                                 child: Container(
                                   height: 55.0,
                                   width: 55.0,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10.0),
                                   ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(9.0),
                                        child: Image(image: AssetImage("assets/foodStuff.jpeg"), height: 52.0, width: 45.0,),),
                                    ), 
                                 ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 15.0),
                                 child: Text("Food Stuff", textAlign: TextAlign.start, style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w700, color: Colors.white),),
                              ),
                            ]
                          ),
                        ),
                     ),
                   ],
                 ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0, left: 19.0, right: 19.0,),
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.096,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(150.0),),
                      color: Color(0xFF009ED6),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                        
                      },
                      splashColor: Color(0xFF00688C),
                          child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,),))
                      ),
                    )
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}

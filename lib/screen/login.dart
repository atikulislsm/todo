import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';

class LogIN_Screen extends StatefulWidget {
  const LogIN_Screen({super.key});

  @override
  State<LogIN_Screen> createState() => _LogIN_ScreenState();
}
class _LogIN_ScreenState extends State<LogIN_Screen> {
  FocusNode _focusNode1=FocusNode();
  FocusNode _focusNode2=FocusNode();

  final email=TextEditingController();
  final password=TextEditingController();
  @override
  void initState() {
    super.initState();
    _focusNode1.addListener((){
      setState(() {
      });
    });
    _focusNode2.addListener((){
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              image(),
              SizedBox(height: 50.0,),
              textfield_email(email, _focusNode1, 'Email', Icons.email),
              SizedBox(height: 10.0,),
              textfield_email(password, _focusNode2, 'Password', Icons.password),
              SizedBox(height: 10,),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    alignment: Alignment.center ,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: customGreen,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    child: Text('LogIn', style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold),),
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget textfield_email(TextEditingController _controller, FocusNode _focusNode, String typeName,IconData icons) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  style: TextStyle(
                    fontSize: 18, color: Colors.black
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                icons,
                color: _focusNode.hasFocus ? customGreen : Color(0xffc5c5c5),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    hintText: typeName,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffc5c5c5),width: 2.0),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: customGreen,width: 2.0),
                      borderRadius: BorderRadius.circular(18),
                    )
                  ),
                ),),
            );
  }

  Widget image() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal:15 ),
              child: Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/7.png'),fit: BoxFit.cover)),
              ),
            );
  }
}

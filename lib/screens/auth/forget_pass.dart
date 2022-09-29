import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class forgetPasswordScreen extends StatefulWidget {
  @override
  State<forgetPasswordScreen> createState() => _forgetPasswordScreenState();
}

class _forgetPasswordScreenState extends State<forgetPasswordScreen>
    with TickerProviderStateMixin {


  late TextEditingController _forgetPassTextController =
      TextEditingController(text: '');

  @override
  void dispose() {

    _forgetPassTextController.dispose();
    super.dispose();
  }

  void _forgetPassFCT() {
    print('_forgetPassTextController.text ${_forgetPassTextController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Stack(children: [
        Positioned(
        bottom: 0,
        right: 0,
        child: RotatedBox(
        quarterTurns: 2,
        child: Image(image: AssetImage('assets/images/shape1.png')),
    ),
    ),
    Positioned(
    top: 0,
    left: 0,
    child: Image(image: AssetImage('assets/images/shape1.png')),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 16,
    ),
    child: ListView(
    children: [
    SizedBox(
    height: 30,
    ),
    Align(
    alignment: Alignment.bottomCenter,
    child: SvgPicture.asset('assets/images/person.svg',
    height: 175, width: 200),
    ),

      SizedBox(
        height: 20,
      ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please Enter Email address to reset your password',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _forgetPassTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  onPressed: _forgetPassFCT,
                  color: Colors.red.shade700,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'Reset now',
                      style: TextStyle(
                        color: Colors.white,
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
      SizedBox(
        height: 10,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          'assets/images/logo.png',
          height: 80,
          width: 100,
        ),
      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

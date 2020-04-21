import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ConditionsOfUse extends StatefulWidget {
  @override
  _ConditionsOfUse createState() => _ConditionsOfUse();
}

class _ConditionsOfUse extends State<ConditionsOfUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Conditions of Use',
        ),
        backgroundColor: Color(0xFF7BC6DD),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/WHBackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Text(
                  'This app is currently in its trial phase and is not to be used under any condition to guide patient management.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ROTEMHomePage();
                          },
                        ),
                      );
                    });
                  },
                  child: Text(
                    'Click here to Agree and return to home page',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40.0),
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

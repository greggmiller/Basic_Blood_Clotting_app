import 'package:flutter/material.dart';
import 'resusable_card.dart';
import 'constants.dart';
import 'ROTEMFastInterpretation.dart';
import 'ROTEM_Step_by_Step.dart';

void main() => runApp(ROTEM());

class ROTEM extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ROTEMHomePage(),
        '/first': (context) => ROTEMFastInterpretation(),
        '/second': (context) => ROTEMalgorithmPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
//      home: ROTEMHomePage(),
    );
  }
}

class ROTEMHomePage extends StatefulWidget {
  _ROTEMHomePageState createState() => _ROTEMHomePageState();
}

class _ROTEMHomePageState extends State<ROTEMHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Western Health ROTEM Interpretation',
          style: TextStyle(fontSize: 16),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // ROTEM Fast Interpretation
              Expanded(
                flex: 2,
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ROTEMFastInterpretation();
                          },
                        ),
                      );
                    });
                  },
                  colour: Colors.grey,
                  cardChild: Center(
                    child: Text(
                      'ROTEM FAST INTERPRETATION',
                      style: kHomePageTextStyle,
                      textAlign: TextAlign.center,
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

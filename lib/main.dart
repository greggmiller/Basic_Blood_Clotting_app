import 'package:flutter/material.dart';
import 'Page_Algorithms.dart';
import 'Page_eLearning.dart';
import 'Generic_page.dart';
import 'Page_Conditions_of_use.dart';
import 'Page_Contact_Numbers.dart';
import 'resusable_card.dart';
import 'constants.dart';
import 'ROTEMFastInterpretation.dart';
import 'ROTEM_Step_by_Step.dart';
import 'Page_FC_dosing_Recon.dart';
import 'Page_eLearning.dart';

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
          'Western Health ROTEM Interpretation',
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

              // ROTEM STEP-by-STEP Guide
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ROTEMalgorithmPage();
                          },
                        ),
                      );
                    });
                  },
                  colour: Colors.grey,
                  cardChild: Center(
                    child: Text(
                      'ROTEM Step-by-Step Guidance',
                      style: kHomePageTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ROTEMalgorithms();
                          },
                        ),
                      );
                    });
                  },
                  colour: Colors.grey,
                  cardChild: Center(
                    child: Text(
                      'ROTEM ALGORITHMS',
                      style: kHomePageTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              //Fibrinogen concentrate dosing and reconstitution
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return FCdosing();
                                },
                              ),
                            );
                          });
                        },
                        colour: Colors.grey,
                        cardChild: Center(
                          child: Text(
                            'Fibrinogen dosing and reconstitution',
                            textAlign: TextAlign.center,
                            style: kHomePageBottomBoxStyle,
                          ),
                        ),
                      ),
                    ),
//Contact Numbers
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ContactNumbers();
                                },
                              ),
                            );
                          });
                        },
                        colour: Colors.grey,
                        cardChild: Center(
                          child: Text(
                            'Important Contact numbers',
                            textAlign: TextAlign.center,
                            style: kHomePageBottomBoxStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // e-learning card
                  //TODO: Consider changing this to about

                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return eLearning();
                              },
                            ),
                          );
                        });
                      },
                      colour: Colors.grey,
                      cardChild: Center(
                        child: Text(
                          'e-Learning',
                          style: kHomePageBottomBoxStyle,
                        ),
                      ),
                    ),
                  ),

                  //conditions of use
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ConditionsOfUse();
                              },
                            ),
                          );
                        });
                      },
                      colour: Colors.grey,
                      cardChild: Center(
                        child: Text(
                          'Conditions of use',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

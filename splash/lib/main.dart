import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'page2.dart';
void main() {
runApp(MyApp2());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 2),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														SecondScreen()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	color: Colors.white,
	child:Image.asset(
              "assets/pikachu-pokemon.jpg", 
               height: 20,
               ),
               
	);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title:Text("Shash's App")),
	body: Center(
		child:Text("Home page",textScaleFactor: 2,)
	),
	);
}
}

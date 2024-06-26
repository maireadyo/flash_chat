import 'package:flutter/material.dart';
import 'package:type_1_sick_days/screens/general_advice_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:type_1_sick_days/screens/registration_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showDisclaimerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 20.0,
          shadowColor: Colors.black12,
          backgroundColor: Colors.black38,
          title: Text(
            'DISCLAIMER',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, letterSpacing: 4),
          ),
          content: SingleChildScrollView(
            child: Text(
              'This application is NOT suitable for people with Type 1 diabetes who are using dapagliflozin/Metformin. '
              'If you are unwell and taking these medications, please contact a healthcare professional as soon as possible.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, letterSpacing: 2),
            ),
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                child: Text('I understand'),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: const Text(
                'Type 1 Sick Days',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Icon(
              Icons.medical_services_outlined,
              size: 100.0,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                _showDisclaimerDialog(context);
              },
              child: Text(
                'Show Disclaimer',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';



import '../main.dart';

double lat=0.0, lon=0.0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final TextEditingController lat = TextEditingController();
  final TextEditingController lon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'WELCOME TO WEATHEROO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
        
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: lat,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter latitude",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                
                controller: lon,
                
                decoration: const InputDecoration(
                  
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter longitude",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //tryLoggingThisUser();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            HomePage(lat: lat.text, lon: lon.text)));
                  },
                  child: const Text('SEE WEATHER'),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
